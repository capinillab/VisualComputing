// Figura Ambigua Caballo
/* En esta imagen se ve el caballo mirando hacia adelante y hacia atras, debido a que no hay puntos de referencia.
  Si se da click sobre la imágen se mostraran las lineas de referencia, en forma ciclica, con lo cual la imágen dejara de ser ambigûa.
  1 Linea de referencia para que el caballo mire hacia el frente.
  2 Linea de referencia para que el caballo mire hacia atras.
  3 Imagen sin referencias.
*/

int refLines;

void setup() {
  size(400, 440, P2D);
}
 
void draw() {
  background(255);
  float v=width/100;
  
  horse(v);
  
  switch(refLines){
    case 1:
      front(v);
      break;
    case 2:
      back(v);
      break;
    default:
      redraw();
  }
}

void front(float v){
  smooth();
  noFill();
  stroke(255);
  strokeWeight(v*0.7);
  beginShape();
  curveVertex(33*v, 60*v);
  curveVertex(33*v, 60*v);
  curveVertex(41*v, 53*v);
  curveVertex(43*v, 45*v);
  curveVertex(43*v, 45*v);
  endShape();
}

void back(float v){
  smooth();
  noFill();
  stroke(255);
  strokeWeight(v*0.7);
  beginShape();
  curveVertex(34*v, 61*v);
  curveVertex(34*v, 61*v);
  curveVertex(31*v, 53*v);
  curveVertex(29*v, 45*v);
  curveVertex(29*v, 45*v);
  endShape();
}

void horse(float v){
  smooth();
  noStroke();
  fill(0);
  beginShape();
  //espalda
  vertex(100*v, 110*v);
  curveVertex(100*v, 72*v);
  curveVertex(100*v, 72*v);
  curveVertex(97*v, 71*v);
  curveVertex(95*v, 70*v);
  curveVertex(93*v, 68*v);
  curveVertex(90*v, 66*v);
  curveVertex(85*v, 63*v);
  curveVertex(80*v, 62*v);
  curveVertex(75*v, 61*v);
  curveVertex(70*v, 60*v);
  //cuello
  curveVertex(65*v, 55*v);
  curveVertex(61*v, 50*v);
  curveVertex(59*v, 47*v);
  curveVertex(57*v, 44*v);
  curveVertex(55*v, 42*v);
  curveVertex(53*v, 40*v);
  curveVertex(50*v, 36*v);
  curveVertex(45*v, 31*v);
  curveVertex(43*v, 28*v);
  curveVertex(41*v, 25*v);
  //orejas
  curveVertex(41*v, 20*v);
  curveVertex(41*v, 14*v);
  curveVertex(40*v, 11*v);
  curveVertex(39*v, 15*v);
  curveVertex(36*v, 19*v);
  curveVertex(35*v, 21*v);
  curveVertex(31*v, 21*v);
  curveVertex(28*v, 22*v);
  curveVertex(26*v, 21*v);
  curveVertex(23*v, 18*v);
  curveVertex(22*v, 15*v);
  curveVertex(20*v, 13*v);
  curveVertex(19*v, 19*v);
  curveVertex(20*v, 22*v);
  curveVertex(21*v, 24*v);
  //cara
  curveVertex(20*v, 30*v);
  curveVertex(19*v, 32*v);
  curveVertex(17*v, 34*v);
  curveVertex(17*v, 37*v);
  curveVertex(18*v, 39*v);
  curveVertex(18*v, 42*v);
  curveVertex(17*v, 44*v);
  curveVertex(16*v, 48*v);
  curveVertex(14*v, 51*v);
  //trompa
  curveVertex(12*v, 53*v);
  curveVertex(11*v, 56*v);
  curveVertex(12*v, 59*v);
  curveVertex(13*v, 60*v);
  curveVertex(15*v, 64*v);
  curveVertex(16*v, 65*v);
  curveVertex(18*v, 66*v);
  curveVertex(21*v, 66*v);
  curveVertex(25*v, 63*v);
  curveVertex(28*v, 62*v);
  curveVertex(31*v, 61*v);
  curveVertex(34*v, 61*v);
  //cuello
  curveVertex(36*v, 66*v);
  curveVertex(37*v, 70*v);
  curveVertex(39*v, 74*v);
  curveVertex(41*v, 79*v);
  curveVertex(42*v, 82*v);
  curveVertex(43*v, 84*v);
  curveVertex(45*v, 88*v);
  curveVertex(46*v, 90*v);
  //pecho
  curveVertex(47*v, 92*v);
  curveVertex(48*v, 95*v);
  curveVertex(48*v, 105*v);
  curveVertex(49*v, 108*v);
  curveVertex(50*v, 110*v);
  curveVertex(50*v, 110*v);
  vertex(100*v, 110*v);
  endShape(CLOSE);
}

// Interacción
void mouseClicked() {
  if (refLines == 2) {
    refLines = 0;
  } else {
    refLines += 1;
  }
}
