// Rotating Snakes (Serpientes giratorias)
/* Evoca una experiencia perceptual de movimiento ilusorio.

  Es una ilusione de deriva periférica; cualquier parte de la figura que esté
  en el centro de nuestro campo visual parece inmóvil (como de hecho lo es),
  mientras que las partes vistas en nuestra visión periférica parecen moverse.
*/

var sketchSnakes = function(insSnakes) {
  "use strict";
	var triang = true;

	insSnakes.setup = function(){
	  insSnakes.createCanvas(600, 600);
	};

	insSnakes.draw = function(){
	  insSnakes.background(100);
	  insSnakes.noFill();
	  insSnakes.smooth(2);
	  var w = insSnakes.width;
	  var h = insSnakes.height;

	  insSnakes.circles (w/6, h/6);
	  insSnakes.circles (w*0.5, h/6);
	  insSnakes.circles (w-w/6, h/6);
	  insSnakes.circles (w/6, h*0.5);
	  insSnakes.circles (w*0.5, h*0.5);
	  insSnakes.circles (w-w/6, h*0.5);
	  insSnakes.circles (w/6, h-h/6);
	  insSnakes.circles (w*0.5, h-h/6);
	  insSnakes.circles (w-w/6, h-h/6);

	  insSnakes.circles (w/3, h/3);
	  insSnakes.circles (w-w/3, h/3);
	  insSnakes.circles (w/3, h-h/3);
	  insSnakes.circles (w-w/3, h-h/3);
	};

	insSnakes.circles = function(xc, yc){
	  insSnakes.smooth();
	  insSnakes.noStroke();
	  var c1 = insSnakes.color(0,0,0);
	  var c2 = insSnakes.color(0,103,248);
	  var c3 = insSnakes.color(255,255,255);
	  var c4 = insSnakes.color(212,216,0);
	  var tone = [c1,c2,c3,c4];
	  var toneSel = 0;
	  var t = 72;
	  var stepA = insSnakes.TWO_PI/t;
	  var stepC = 0;

	  for (var c = 0; c < 9; c++) {
	    for (var i = 0; i < t; i++) {
	      toneSel = (toneSel<3)? (toneSel+=1):0;

	      insSnakes.fill(tone[toneSel]);
	      insSnakes.arc(xc, yc, 200-stepC, 200-stepC, stepA*i, stepA*(i+1));
	    }
	    stepC *= 0.9;
	    stepC += 30;
	    toneSel = (toneSel<3)? (toneSel+=1):0;
	  }
	};

};
var myp5 = new p5(sketchSnakes, 'snakes');
