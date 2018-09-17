// Rotating Contra (Serpientes giratorias)
/* Evoca una experiencia perceptual de movimiento ilusorio.

  Es una ilusione de deriva periférica; cualquier parte de la figura que esté
  en el centro de nuestro campo visual parece inmóvil (como de hecho lo es),
  mientras que las partes vistas en nuestra visión periférica parecen moverse.
*/

var sketchContra = function(insContra) {
  "use strict";
	var limit;

	insContra.setup = function(){
	  insContra.createCanvas(512,300);
	  insContra.frameRate(60);
	  limit = insContra.width;
	};

	insContra.draw = function(){
	  insContra.background(255);
	  insContra.smooth(2);
	  var w = insContra.width;
	  var h = insContra.height;

	  for (var i = 0; i <= w; i++) {
	    var inter = insContra.map(i, 0, limit, 0, 1);
	    var c = insContra.lerpColor(30, 225, inter);
	    insContra.stroke(c);
	    insContra.line(i, 0, i, h);
	  }

	  insContra.noStroke();
	  insContra.fill(128);
	  insContra.rect(50,120,412,60);
	};

	// Interacción
	insContra.mouseMoved = function() {
	  if (insContra.mouseX>0 && insContra.mouseX<insContra.width){
	    limit = insContra.mouseX;
	  }else{
	    limit = insContra.width;
	  }
	};
};
var myp5 = new p5(sketchContra, 'contra');
