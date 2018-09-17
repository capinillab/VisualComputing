// Neon
/* Se aprecia un disco brillante en el area del fondo que lleva el color azul,
este color es igual al del fondo del resto de la imágen (blanco),
pero se ve mucho mas brillante.

Al pasar el mouse sobre la imagen el color azul de los discos desaparece,
y el fondo se ve con el mismo brillo.
*/

var sketchNeon = function(insNeon) {
  "use strict";
	var pgCirc;
	var circBlue = true;

	insNeon.setup = function(){
	  insNeon.createCanvas(400, 400);
	  pgCirc = insNeon.createGraphics(400, 400);
		insNeon.frameRate(1);
	};

	insNeon.draw = function(){
	  insNeon.background(255);
		var w = insNeon.width;
		var h = insNeon.height;
	  var d = w*0.32;
	  var xm = w*0.25;

	  var cb = insNeon.color(0,0,0);
	  var cn = insNeon.color(0,0,255);

	  insNeon.circles(w*0.5, h*0.25, d, cb);
	  insNeon.circles(w*0.75, h*0.5, d, cb);
	  insNeon.circles(w*0.5, h*0.75, d, cb);
	  insNeon.circles(w*0.25, h*0.5, d, cb);

	  pgCirc.loadPixels();

	  if (circBlue){
	    insNeon.blueNeon(w, h, xm, cb, cn);
	  }

	  pgCirc.updatePixels();

	  insNeon.image(pgCirc, 0, 0);
	};

	insNeon.circles = function(xc, yc, d, c) {
	  pgCirc.smooth(2);
	  pgCirc.noFill();
	  pgCirc.stroke(c);
	  pgCirc.strokeWeight(d*0.039);
	  var step = d/4;
	  for (var i = 0; i < 4; i++) {
	    pgCirc.ellipse(xc, yc, d - i*step, d - i*step);
	  }
	};

	insNeon.blueNeon = function(w, h, xm, cb, cn){
	  for (var i = 0; i < w; i++) {
	    for (var j = 0; j < h; j++) {
	      var pos = i + j*w;
	      var dp = insNeon.dist(w/2, h/2, i, j);
	      if (pgCirc.pixels[pos] == cb && dp <= xm){
	        pgCirc.pixels[pos] = cn;
	      }
	    }
	  }
	};

	// Interacción
	insNeon.mouseMoved = function() {
	  if (insNeon.dist(insNeon.mouseX, insNeon.mouseY, insNeon.width/2, insNeon.height/2) < insNeon.width/2){
	    circBlue = false;
	  }else{
	    circBlue = true;
	  }
	};

};
var myp5 = new p5(sketchNeon, 'neon');
