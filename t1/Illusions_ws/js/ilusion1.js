// Función instaciada
// Figura Ambigua Caballo
/* En esta imagen se ve el caballo mirando hacia adelante y hacia atras, debido a que no hay puntos de referencia.
  Si se da click sobre la imágen se mostraran las lineas de referencia, en forma ciclica, con lo cual la imágen dejara de ser ambigûa.
  1 Linea de referencia para que el caballo mire hacia el frente.
  2 Linea de referencia para que el caballo mire hacia atras.
  3 Imagen sin referencias.
*/

var sketchHorse = function(insHorse) {
  "use strict";
  var refLines = 0;

  insHorse.setup = function() {
    insHorse.createCanvas(400, 440);
  };

  insHorse.draw = function() {
    insHorse.background(220);

    var v = insHorse.width/100;
    insHorse.drawHorse(v);

    switch (refLines) {
      case 1:
        insHorse.drawLineFront(v);
        break;
      case 2:
        insHorse.drawLineBack(v);
    }
  };

  insHorse.drawHorse = function(v){
    insHorse.smooth();
    insHorse.fill(0);
    insHorse.noStroke();
    insHorse.beginShape();
    //espalda
    insHorse.vertex(100*v, 110*v);
    insHorse.vertex(100*v, 110*v);
    insHorse.curveVertex(100*v, 72*v);
    insHorse.curveVertex(100*v, 72*v);
    insHorse.curveVertex(97*v, 71*v);
    insHorse.curveVertex(95*v, 70*v);
    insHorse.curveVertex(93*v, 68*v);
    insHorse.curveVertex(90*v, 66*v);
    insHorse.curveVertex(85*v, 63*v);
    insHorse.curveVertex(80*v, 62*v);
    insHorse.curveVertex(75*v, 61*v);
    insHorse.curveVertex(70*v, 60*v);
    //cuello
    insHorse.curveVertex(65*v, 55*v);
    insHorse.curveVertex(61*v, 50*v);
    insHorse.curveVertex(59*v, 47*v);
    insHorse.curveVertex(57*v, 44*v);
    insHorse.curveVertex(55*v, 42*v);
    insHorse.curveVertex(53*v, 40*v);
    insHorse.curveVertex(50*v, 36*v);
    insHorse.curveVertex(45*v, 31*v);
    insHorse.curveVertex(43*v, 28*v);
    insHorse.curveVertex(41*v, 25*v);
    //orejas
    insHorse.curveVertex(41*v, 20*v);
    insHorse.curveVertex(41*v, 14*v);
    insHorse.curveVertex(40*v, 11*v);
    insHorse.curveVertex(39*v, 15*v);
    insHorse.curveVertex(36*v, 19*v);
    insHorse.curveVertex(35*v, 21*v);
    insHorse.curveVertex(31*v, 21*v);
    insHorse.curveVertex(28*v, 22*v);
    insHorse.curveVertex(26*v, 21*v);
    insHorse.curveVertex(23*v, 18*v);
    insHorse.curveVertex(22*v, 15*v);
    insHorse.curveVertex(20*v, 13*v);
    insHorse.curveVertex(19*v, 19*v);
    insHorse.curveVertex(20*v, 22*v);
    insHorse.curveVertex(21*v, 24*v);
    //cara
    insHorse.curveVertex(20*v, 30*v);
    insHorse.curveVertex(19*v, 32*v);
    insHorse.curveVertex(17*v, 34*v);
    insHorse.curveVertex(17*v, 37*v);
    insHorse.curveVertex(18*v, 39*v);
    insHorse.curveVertex(18*v, 42*v);
    insHorse.curveVertex(17*v, 44*v);
    insHorse.curveVertex(16*v, 48*v);
    insHorse.curveVertex(14*v, 51*v);
    //trompa
    insHorse.curveVertex(12*v, 53*v);
    insHorse.curveVertex(11*v, 56*v);
    insHorse.curveVertex(12*v, 59*v);
    insHorse.curveVertex(13*v, 60*v);
    insHorse.curveVertex(15*v, 64*v);
    insHorse.curveVertex(16*v, 65*v);
    insHorse.curveVertex(18*v, 66*v);
    insHorse.curveVertex(21*v, 66*v);
    insHorse.curveVertex(25*v, 63*v);
    insHorse.curveVertex(28*v, 62*v);
    insHorse.curveVertex(31*v, 61*v);
    insHorse.curveVertex(34*v, 61*v);
    //cuello
    insHorse.curveVertex(36*v, 66*v);
    insHorse.curveVertex(37*v, 70*v);
    insHorse.curveVertex(39*v, 74*v);
    insHorse.curveVertex(41*v, 79*v);
    insHorse.curveVertex(42*v, 82*v);
    insHorse.curveVertex(43*v, 84*v);
    insHorse.curveVertex(45*v, 88*v);
    insHorse.curveVertex(46*v, 90*v);
    //pecho
    insHorse.curveVertex(47*v, 92*v);
    insHorse.curveVertex(48*v, 95*v);
    insHorse.curveVertex(48*v, 105*v);
    insHorse.curveVertex(49*v, 108*v);
    insHorse.curveVertex(50*v, 110*v);
    insHorse.curveVertex(50*v, 110*v);
    insHorse.vertex(100*v, 110*v);
    insHorse.endShape();
  };

  insHorse.drawLineFront = function(v){
    insHorse.smooth();
    insHorse.noFill();
    insHorse.stroke(255);
    insHorse.strokeWeight(v*0.7);
    insHorse.beginShape();
    insHorse.curveVertex(33*v, 60*v);
    insHorse.curveVertex(33*v, 60*v);
    insHorse.curveVertex(41*v, 53*v);
    insHorse.curveVertex(43*v, 45*v);
    insHorse.curveVertex(43*v, 45*v);
    insHorse.endShape();
  };

  insHorse.drawLineBack = function(v){
    insHorse.smooth();
    insHorse.noFill();
    insHorse.stroke(255);
    insHorse.strokeWeight(v*0.7);
    insHorse.beginShape();
    insHorse.curveVertex(34*v, 61*v);
    insHorse.curveVertex(34*v, 61*v);
    insHorse.curveVertex(31*v, 53*v);
    insHorse.curveVertex(29*v, 45*v);
    insHorse.curveVertex(29*v, 45*v);
    insHorse.endShape();
  };

  // Interacción
  insHorse.mousePressed = function() {
    var w = insHorse.width;
    var h = insHorse.height;
    if (insHorse.mouseX > 0 && insHorse.mouseX < w && insHorse.mouseY > 0 && insHorse.mouseY < h){
      if (refLines === 2){
        refLines = 0;
      }else{
        refLines += 1;
      }
    }
  };

};
var myp5 = new p5(sketchHorse, 'horse');
