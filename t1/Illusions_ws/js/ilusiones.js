// Función para crear el caballo ambiguo
var skHorse = function(ac) {

  ac.setup = function() {
    ac.createCanvas(400, 440);
  };

  ac.draw = function() {
    ac.background(220);
    var v = 4;

    ac.smooth();
    ac.fill(0);
    ac.beginShape();

    //espalda
    ac.vertex(100*v, 110*v);
    ac.vertex(100*v, 110*v);
    ac.curveVertex(100*v, 72*v);
    ac.curveVertex(100*v, 72*v);
    ac.curveVertex(97*v, 71*v);
    ac.curveVertex(95*v, 70*v);
    ac.curveVertex(93*v, 68*v);
    ac.curveVertex(90*v, 66*v);
    ac.curveVertex(85*v, 63*v);
    ac.curveVertex(80*v, 62*v);
    ac.curveVertex(75*v, 61*v);
    ac.curveVertex(70*v, 60*v);
    //cuello
    ac.curveVertex(65*v, 55*v);
    ac.curveVertex(61*v, 50*v);
    ac.curveVertex(59*v, 47*v);
    ac.curveVertex(57*v, 44*v);
    ac.curveVertex(55*v, 42*v);
    ac.curveVertex(53*v, 40*v);
    ac.curveVertex(50*v, 36*v);
    ac.curveVertex(45*v, 31*v);
    ac.curveVertex(43*v, 28*v);
    ac.curveVertex(41*v, 25*v);
    //orejas
    ac.curveVertex(41*v, 20*v);
    ac.curveVertex(41*v, 14*v);
    ac.curveVertex(40*v, 11*v);
    ac.curveVertex(39*v, 15*v);
    ac.curveVertex(36*v, 19*v);
    ac.curveVertex(35*v, 21*v);
    ac.curveVertex(31*v, 21*v);
    ac.curveVertex(28*v, 22*v);
    ac.curveVertex(26*v, 21*v);
    ac.curveVertex(23*v, 18*v);
    ac.curveVertex(22*v, 15*v);
    ac.curveVertex(20*v, 13*v);
    ac.curveVertex(19*v, 19*v);
    ac.curveVertex(20*v, 22*v);
    ac.curveVertex(21*v, 24*v);
    //cara
    ac.curveVertex(20*v, 30*v);
    ac.curveVertex(19*v, 32*v);
    ac.curveVertex(17*v, 34*v);
    ac.curveVertex(17*v, 37*v);
    ac.curveVertex(18*v, 39*v);
    ac.curveVertex(18*v, 42*v);
    ac.curveVertex(17*v, 44*v);
    ac.curveVertex(16*v, 48*v);
    ac.curveVertex(14*v, 51*v);
    //trompa
    ac.curveVertex(12*v, 53*v);
    ac.curveVertex(11*v, 56*v);
    ac.curveVertex(12*v, 59*v);
    ac.curveVertex(13*v, 60*v);
    ac.curveVertex(15*v, 64*v);
    ac.curveVertex(16*v, 65*v);
    ac.curveVertex(18*v, 66*v);
    ac.curveVertex(21*v, 66*v);
    ac.curveVertex(25*v, 63*v);
    ac.curveVertex(28*v, 62*v);
    ac.curveVertex(31*v, 61*v);
    ac.curveVertex(34*v, 61*v);
    //cuello
    ac.curveVertex(36*v, 66*v);
    ac.curveVertex(37*v, 70*v);
    ac.curveVertex(39*v, 74*v);
    ac.curveVertex(41*v, 79*v);
    ac.curveVertex(42*v, 82*v);
    ac.curveVertex(43*v, 84*v);
    ac.curveVertex(45*v, 88*v);
    ac.curveVertex(46*v, 90*v);
    //pecho
    ac.curveVertex(47*v, 92*v);
    ac.curveVertex(48*v, 95*v);
    ac.curveVertex(48*v, 105*v);
    ac.curveVertex(49*v, 108*v);
    ac.curveVertex(50*v, 110*v);
    ac.curveVertex(50*v, 110*v);
    ac.vertex(100*v, 110*v);
    ac.endShape();
  };

};
var myp5 = new p5(skHorse, 'ambHorse');


var skHor = function(ac) {

  ac.setup = function() {
    ac.createCanvas(400, 440);
  };

  ac.draw = function() {
    ac.background(220);
    var v = 4;

    ac.smooth();
    ac.fill(0);
    ac.beginShape();

    //espalda
    ac.vertex(100*v, 110*v);
    ac.vertex(100*v, 110*v);
    ac.curveVertex(100*v, 72*v);
    ac.curveVertex(100*v, 72*v);
    ac.curveVertex(97*v, 71*v);
    ac.curveVertex(95*v, 70*v);
    ac.curveVertex(93*v, 68*v);
    ac.curveVertex(90*v, 66*v);
    ac.curveVertex(85*v, 63*v);
    ac.curveVertex(80*v, 62*v);
    ac.curveVertex(75*v, 61*v);
    ac.curveVertex(70*v, 60*v);
    //cuello
    ac.curveVertex(65*v, 55*v);
    ac.curveVertex(61*v, 50*v);
    ac.curveVertex(59*v, 47*v);
    ac.curveVertex(57*v, 44*v);
    ac.curveVertex(55*v, 42*v);
    ac.curveVertex(53*v, 40*v);
    ac.curveVertex(50*v, 36*v);
    ac.curveVertex(45*v, 31*v);
    ac.curveVertex(43*v, 28*v);
    ac.curveVertex(41*v, 25*v);
    //orejas
    ac.curveVertex(41*v, 20*v);
    ac.curveVertex(41*v, 14*v);
    ac.curveVertex(40*v, 11*v);
    ac.curveVertex(39*v, 15*v);
    ac.curveVertex(36*v, 19*v);
    ac.curveVertex(35*v, 21*v);
    ac.curveVertex(31*v, 21*v);
    ac.curveVertex(28*v, 22*v);
    ac.curveVertex(26*v, 21*v);
    ac.curveVertex(23*v, 18*v);
    ac.curveVertex(22*v, 15*v);
    ac.curveVertex(20*v, 13*v);
    ac.curveVertex(19*v, 19*v);
    ac.curveVertex(20*v, 22*v);
    ac.curveVertex(21*v, 24*v);
    //cara
    ac.curveVertex(20*v, 30*v);
    ac.curveVertex(19*v, 32*v);
    ac.curveVertex(17*v, 34*v);
    ac.curveVertex(17*v, 37*v);
    ac.curveVertex(18*v, 39*v);
    ac.curveVertex(18*v, 42*v);
    ac.curveVertex(17*v, 44*v);
    ac.curveVertex(16*v, 48*v);
    ac.curveVertex(14*v, 51*v);
    //trompa
    ac.curveVertex(12*v, 53*v);
    ac.curveVertex(11*v, 56*v);
    ac.curveVertex(12*v, 59*v);
    ac.curveVertex(13*v, 60*v);
    ac.curveVertex(15*v, 64*v);
    ac.curveVertex(16*v, 65*v);
    ac.curveVertex(18*v, 66*v);
    ac.curveVertex(21*v, 66*v);
    ac.curveVertex(25*v, 63*v);
    ac.curveVertex(28*v, 62*v);
    ac.curveVertex(31*v, 61*v);
    ac.curveVertex(34*v, 61*v);
    //cuello
    ac.curveVertex(36*v, 66*v);
    ac.curveVertex(37*v, 70*v);
    ac.curveVertex(39*v, 74*v);
    ac.curveVertex(41*v, 79*v);
    ac.curveVertex(42*v, 82*v);
    ac.curveVertex(43*v, 84*v);
    ac.curveVertex(45*v, 88*v);
    ac.curveVertex(46*v, 90*v);
    //pecho
    ac.curveVertex(47*v, 92*v);
    ac.curveVertex(48*v, 95*v);
    ac.curveVertex(48*v, 105*v);
    ac.curveVertex(49*v, 108*v);
    ac.curveVertex(50*v, 110*v);
    ac.curveVertex(50*v, 110*v);
    ac.vertex(100*v, 110*v);
    ac.endShape();
  };

};
var myp5 = new p5(skHor, 'ambHor');
