// Waterfall (Cascada)
/*Fije la mirada en cruz central durante al menos 30 segundos.
  luego haga click sobre la imagen, Observe el efecto posterior del
  movimiento en la figura en reposo (grilla de puntos).
*/
var sketchWaterfall = function(insWater) {
  "use strict";
	var frame = 0;
	var fondo = false;

	insWater.setup = function(){
	  insWater.createCanvas(400, 400);
		insWater.frameRate(10);
	};

	insWater.draw = function(){
	  insWater.background(255);
	  var w = insWater.width;
	  var h = insWater.height;
	  var t = 12;
	  var col = 0;
	  var d = w/(3*t);

	  if (fondo) {
	    insWater.dots(w, h);
	  } else {
	    switch(frame){
	      case 0:
	        insWater.circles (w, h, 0, t, col);
	        frame = 1;
	        break;
	      case 1:
	        col = (col == 0)? 255:0;
	        insWater.circles (w, h, d, t, col);
	        frame = 2;
	        break;
	      case 2:
	        insWater.circles (w, h, 2*d, t, col);
	        frame = 0;
	        break;
	    }
	  }

	  // insWater.delay(100);
	};

	insWater.circles = function(w, h, d, t, col){
	  insWater.background(128);
	  insWater.smooth();
	  insWater.noStroke();
	  var stepA = insWater.TWO_PI/t;
	  var stepB = w/t;
	  var stepC = 0;

	  for (var c = 0; c < t; c++) {
	    for (var i = 0; i < t; i++) {
	      col = (col == 0)? 255:0;

	      insWater.fill(col);
	      insWater.arc(w/2, h/2, w-stepC, h-stepC, stepA*i, stepA*(i+1));
	    }
	    stepC += stepB;
	    stepC -= d;
	    d = 0;
	    col = (col == 0)? 255:0;
	  }

	  insWater.fill(0,0,255);
	  insWater.ellipse(w/2, h/2, w/t, w/t);
	  insWater.stroke(255,0,0);
	  insWater.strokeWeight(3);
	  insWater.line(w/2, h/2+7, w/2, h/2-7);
	  insWater.line(w/2+7, h/2, w/2-7, h/2);
	};

	insWater.dots = function(w, h) {
	  insWater.background(255);
	  insWater.strokeWeight(w*0.01);
	  insWater.stroke(0);
	  var stepW = w/10;
	  var stepH = h/10;

	  for (var i = 0; i < w; i+=stepW) {
	    for (var j = 0; j < h; j+=stepH) {
	      insWater.point(i+stepW/2, j+stepH/2);
	    }
	  }
	};

	// Interacción
	insWater.mousePressed = function() {
		var w = insWater.width;
		var h = insWater.height;
		if (insWater.mouseX > 0 && insWater.mouseX < w && insWater.mouseY > 0 && insWater.mouseY < h){
			if (fondo){
				fondo = false;
			}else{
				fondo = true;
			}
		}
	};
};
var myp5 = new p5(sketchWaterfall, 'waterfall');
