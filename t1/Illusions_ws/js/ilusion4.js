// Ilusión de Orbison
/* El cuadro rojo aparece distorsionado, aunque no lo este,
	al igual que el rectángulo que contiene la imagen, aunque tampoco lo esté.

	Pase el mouse sobre la imagen para que desaparezcan las lineas azules.
*/

var sketchOrbison = function(insOrbison) {
  "use strict";
	var triang = true;

	insOrbison.setup = function(){
	  insOrbison.createCanvas(400, 270);
	};

	insOrbison.draw = function(){
	  insOrbison.background(255);
	  insOrbison.noFill();
	  insOrbison.smooth(2);
	  var w = insOrbison.width;
	  var h = insOrbison.height;
	  var s = 10;
	  var d = (w>h)? (h*0.35):(w*0.35);

	  insOrbison.stroke(0,140,255);
	  insOrbison.strokeWeight(w*0.02);
	  insOrbison.quad(0,0, w,0, w,h, 0,h);

	  if(triang){
	    insOrbison.triangles(w, h, s);
	  }
	  var x = w*0.5;
	  var y = h*0.5;

	  insOrbison.stroke(255,0,0);
	  insOrbison.strokeWeight(w*0.01);
	  insOrbison.quad(x,y+d, x+d,y, x,y-d, x-d,y);
	};

	insOrbison.triangles = function(w, h, s){
	  insOrbison.stroke(0,140,255);
	  insOrbison.strokeWeight(w*0.01);
	  var stepW = w/(s*0.63);
	  var stepH = h/s;
	  var d = -stepW/2;

	  for(var i=1; i<s*1.5; i++){
	    insOrbison.triangle(d, h/2-stepH*i, d, h/2+stepH*i, d+stepW*i, h/2);
	  }
	};

	// Interacción
	insOrbison.mouseMoved = function() {
	  if (insOrbison.dist(insOrbison.mouseX,insOrbison.mouseY,insOrbison.width/2,insOrbison.height/2) < insOrbison.width/2){
	    triang = false;
	  }else{
	    triang = true;
	  }
	};

};
var myp5 = new p5(sketchOrbison, 'orbison');
