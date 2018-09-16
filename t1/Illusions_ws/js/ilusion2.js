// Rostros monstruosos
/* Se debe enfocar la mirada en el punto de la cruz central,
  con la vista periferica se observa que los rostros se ven monstruosos.

  al hacer click se mostrara la linea de referencia de la altura de los ojos.
*/

var sketchFace = function(insFace) {
  "use strict";
  var refLine = false;

  var imgL;  // Declara variable 'img'.
  var imgR;  // Declara variable 'img'.
  var faces = [];

  insFace.setup = function() {
    insFace.createCanvas(852, 406);
    insFace.frameRate(10);

    // faces = new StringList();

    for (var i = 1 ; i < 41; i++){
      insFace.append(faces, "Faces/rostros/" + insFace.str(i) + ".png");
    }
  };

  insFace.draw = function() {
    insFace.background(0);

    insFace.pointView(insFace.width, insFace.height);

    imgL = insFace.loadImage(insFace.random(faces));
    imgR = insFace.loadImage(insFace.random(faces));

    // insFace.loadImage('js/rostros/7.png', function(img) {
    //   insFace.image(img, 0, 0);
    // });

    insFace.image(imgL, 0, 0);
    insFace.image(imgR, 548, 0);

    if(refLine === true) {
      insFace.lineRef(insFace.width, insFace.height);
    }

    // insFace.delay(70);
  };

  insFace.pointView = function(w, h){
    insFace.smooth();
    insFace.stroke(255);
    insFace.strokeWeight(w*0.005);
    insFace.ellipse(w/2, h/2, w*0.005, w*0.005);
    insFace.line(w/2, h/2+10, w/2, h/2+30);
    insFace.line(w/2+10, h/2, w/2+30, h/2);
    insFace.line(w/2, h/2-10, w/2, h/2-30);
    insFace.line(w/2-10, h/2, w/2-30, h/2);
  };

  insFace.lineRef = function(w, h){
    insFace.smooth();
    insFace.stroke(255);
    insFace.strokeWeight(w*0.005);
    insFace.line(0, h/2, w, h/2);
  };

  // interacción
  insFace.mousePressed = function() {
    var w = insFace.width;
    var h = insFace.height;
    if (insFace.mouseX > 0 && insFace.mouseX < w && insFace.mouseY > 0 && insFace.mouseY < h){
      if (refLine){
        refLine = false;
      }else{
        refLine = true;
      }
    }
  };

};
var myp5 = new p5(sketchFace, 'face');
