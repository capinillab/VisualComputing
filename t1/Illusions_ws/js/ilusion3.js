//Neon https://www.illusionsindex.org/i/neon-color-spreading
//https://processing.org/examples/functions.html
//https://processing.org/reference/arc_.html

var sketchNeon = function(insNeon) {
  "use strict";
  var gCirc;

  insNeon.setup = function() {
    insNeon.createCanvas(400, 400);
  }

  insNeon.draw = function() {
    insNeon.background(255);
    var d = insNeon.width*0.32;
    var xm = insNeon.width*0.5;
    var w = insNeon.width;
    var h = insNeon.height;

    insNeon.circles(w*0.5, h*0.25, d);
    insNeon.circles(w*0.75, h*0.5, d);
    insNeon.circles(w*0.5, h*0.75, d);
    insNeon.circles(w*0.25, h*0.5, d);

    insNeon.center(xm);
  }

  insNeon.circles = function(xc, yc, d) {
    insNeon.smooth();
    insNeon.noFill();
    insNeon.strokeWeight(d*0.039);
    var step = d/4;
    for (var i = 0; i < 4; i++) {
      insNeon.ellipse(xc, yc, d - i*step, d - i*step);
    }
  }

  insNeon.center = function(d){
    insNeon.smooth();
    // insNeon.noStroke();
    insNeon.ellipse(d, d, d, d);
  }

};
var myp5 = new p5(sketchNeon, 'neon');
