//Ilusión de Jastrow

// The PShape object
PShape jastrow;

void setup() {
  size(640, 480, P2D);

  // First create the shape
  jastrow = createShape();
  jastrow.beginShape();
  // You can set fill and stroke
  jastrow.fill(102);
  jastrow.stroke(255);
  jastrow.strokeWeight(2);
  // Here, we are hardcoding a series of vertices
  jastrow.curveVertex(0, 0);
  jastrow.curveVertex(0, 53);
  jastrow.curveVertex(53, 53);
  jastrow.curveVertex(53, 0);
  jastrow.endShape(CLOSE);
}

void draw() {
  background(51);
  noFill();  
  
  strokeWeight(39);
  arc(200, 200, 300, 300, radians(250), radians(290));
  strokeCap(SQUARE);
  // We can use translate to move the PShape
  translate(mouseX, mouseY);
  arc(0, 0, 300, 300, radians(250), radians(290));
  // Display the shape
  //shape(jastrow);
}
