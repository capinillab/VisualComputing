// Rostros monstruosos
/* Se debe enfocar la mirada en el punto de la cruz central, 
  con la vista periferica se observa que los rostros se ven monstruosos.
  
  al hacer click se mostrara la linea de referencia de la altura de los ojos
*/

PImage imgL;
PImage imgR;
StringList faces;
boolean refLine = false;

void setup() {
  size(852, 406, P2D);
  faces = new StringList();
  
  for (int i = 1 ; i < 41 ;i++){
    faces.append("rostros/" + str(i) + ".png");
  }
}

void draw() {
  background(0);
  
  pointView(width, height);
  int numL = int(random(40));
  int numR = int(random(40));
  
  imgL = loadImage(faces.get(numL));
  imgR = loadImage(faces.get(numR));
  
  image(imgL, 0, 0);
  image(imgR, 548, 0);
  
  if (refLine) {
    lineRef(width, height);
  } else {
    redraw();
  }
  
  delay(70);
}

void pointView(float w, float h){
  smooth();
  stroke(255);
  strokeWeight(w*0.005);
  ellipse(w/2, h/2, w*0.005, w*0.005);
  line(w/2, h/2+10, w/2, h/2+30);
  line(w/2+10, h/2, w/2+30, h/2);
  line(w/2, h/2-10, w/2, h/2-30);
  line(w/2-10, h/2, w/2-30, h/2);
}

void lineRef(float w, float h){
  smooth();
  stroke(255);
  strokeWeight(w*0.005);
  line(0, h/2, w, h/2);
}

// Interacción
void mouseClicked() {
  if (refLine) {
    refLine = false;
  } else {
    refLine = true;
  }
}
