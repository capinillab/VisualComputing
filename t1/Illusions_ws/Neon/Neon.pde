// Rostros monstruosos

void setup() {
  size(400, 400, P2D);
}

void draw() {
  background(255);
  float d = width*0.32;
  float xm = width*0.5;
  
  circles(width*0.5, height*0.25, d);
  circles(width*0.75, height*0.5, d);
  circles(width*0.5, height*0.75, d);
  circles(width*0.25, height*0.5, d);
  
  //center(xm);
}

void circles(float xc, float yc, float d) {
  smooth();
  noFill();
  strokeWeight(d*0.039);
  float step = d/4;
  for (int i = 0; i < 4; i++) {
    ellipse(xc, yc, d - i*step, d - i*step);
  }
}

void center(float d){
  smooth();
  noStroke();
  ellipse(d, d, d, d);
}


//////
// lo otro
//////

//PGraphics pgCirc;
//PGraphics pgCent;

//void setup() {
//  size(400, 400, P2D);
//  pgCirc = createGraphics(400, 400);
//  pgCent = createGraphics(400, 400);
//}

//void draw() {
//  background(255);
//  float d = width*0.32;
//  float xm = width*0.5;
  
//  pgCirc.beginDraw();
//  circles(width*0.5, height*0.25, d);
//  circles(width*0.75, height*0.5, d);
//  circles(width*0.5, height*0.75, d);
//  circles(width*0.25, height*0.5, d);
//  pgCirc.endDraw();
  
//  pgCent.beginDraw();
//  center(xm);
//  pgCent.endDraw();
  
//  //pgCirc.mask(pgCent);
  
//  //loadPixels();
//  //for (int i = 0; i < width*height; i++) {
//  //  if (color(pixels[i]) == color(255, 255, 255)){
//  //    if (i % width > xm-xm/2 && i % width < xm+xm/2 &&i > (xm-xm/2) * width && i < (xm+xm/2) * width){
//  //      pixels[i] = color(0,0,255);
//  //    }
//  //  }
//  //}
//  //updatePixels();
  
//  image(pgCirc, 0, 0);
//  //image(pgCent, 0, 0);
//}

//void circles(float xc, float yc, float d) {
//  pgCirc.smooth();
//  pgCirc.noFill();
//  pgCirc.stroke(color(0,0,0));
//  pgCirc.strokeWeight(d*0.039);
//  float step = d/4;
//  for (int i = 0; i < 4; i++) {
//    pgCirc.ellipse(xc, yc, d - i*step, d - i*step);
//  }
//}

//void center(float d){
//  color c = color(255);
//  pgCent.fill(c);
//  pgCent.noStroke();
//  pgCent.ellipse(d, d, d, d);
//}
