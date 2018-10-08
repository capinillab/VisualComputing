import frames.timing.*;
import frames.primitives.*;
import frames.core.*;
import frames.processing.*;

// 1. Frames' objects
Scene scene;
Frame frame;
Vector v1, v2, v3;
// timing
TimingTask spinningTask;
boolean yDirection;
// scaling is a power of 2
int n = 4;

// 2. Hints
boolean triangleHint = true;
boolean gridHint = true;
boolean debug = true;

boolean depthMap = false;
boolean antiAliasing = false;

// 3. Use FX2D, JAVA2D, P2D or P3D
String renderer = P3D;

void setup() {
  //use 2^n to change the dimensions
  // size(1024, 1024, renderer);
  size(512, 512, renderer);
  scene = new Scene(this);
  if (scene.is3D())
    scene.setType(Scene.Type.ORTHOGRAPHIC);
  scene.setRadius(width/2);
  scene.fitBallInterpolation();

  // not really needed here but create a spinning task
  // just to illustrate some frames.timing features. For
  // example, to see how 3D spinning from the horizon
  // (no bias from above nor from below) induces movement
  // on the frame instance (the one used to represent
  // onscreen pixels): upwards or backwards (or to the left
  // vs to the right)?
  // Press ' ' to play it
  // Press 'y' to change the spinning axes defined in the
  // world system.
  spinningTask = new TimingTask() {
    @Override
    public void execute() {
      scene.eye().orbit(scene.is2D() ? new Vector(0, 0, 1) :
        yDirection ? new Vector(0, 1, 0) : new Vector(1, 0, 0), PI / 100);
    }
  };
  scene.registerTask(spinningTask);

  frame = new Frame();
  frame.setScaling(width/pow(2, n));

  // init the triangle that's gonna be rasterized
  randomizeTriangle();
}

void draw() {
  background(0);
  stroke(0, 255, 0);
  if (gridHint)
    scene.drawGrid(scene.radius(), (int)pow(2, n));
  if (triangleHint)
    drawTriangleHint();
  pushMatrix();
  pushStyle();
  scene.applyTransformation(frame);
  triangleRaster();
  popStyle();
  popMatrix();
}

float edgeFunction(Vector p1, Vector p2, Vector p3){
  return ((p3.x() - p1.x()) * (p2.y() - p1.y()) - (p3.y() - p1.y()) * (p2.x() - p1.x()));
}

// Implement this function to rasterize the triangle.
// Coordinates are given in the frame system which has a dimension of 2^n
void triangleRaster() {
  // frame.location converts points from world to frame
  // here we convert v1 to illustrate the idea
	float Area, R, G, B;

  color c1 = color(255, 0, 0);
  color c2 = color(0, 255, 0);
  color c3 = color(0, 0, 255);
	color fc = color(0, 0, 0);

  int w = round(pow(2, n)/2);
  int h = round(pow(2, n)/2);

	// Vectores
  Vector p1 = frame.location(v1);
  Vector p2 = frame.location(v2);
  Vector p3 = frame.location(v3);
	Vector pr = new Vector(0.0, 0.0);

  Area = edgeFunction(p1, p2, p3);

	if(Area < 0){
    p2 = frame.location(v3);
    p3 = frame.location(v2);
    Area = edgeFunction(p1, p2, p3);
	}

	for(int j = -h; j < h; j++){
		for(int i = -w; i < w; i++){
			pr.set(j+0.5, i+0.5);

			float w1 = edgeFunction(p2, p3, pr);
			float w2 = edgeFunction(p3, p1, pr);
			float w3 = edgeFunction(p1, p2, pr);

			if (w1 >= 0 && w2 >= 0 && w3 >= 0){
				w1 /= Area;
				w2 /= Area;
				w3 /= Area;
				R = w1 * red(c1)   + w2 * red(c2)   + w3 * red(c3);
				G = w1 * green(c1) + w2 * green(c2) + w3 * green(c3);
				B = w1 * blue(c1)  + w2 * blue(c2)  + w3 * blue(c3);

				fc = color(R, G, B);
				pushStyle();
				noStroke();
				fill(fc);
				rect(j, i, 1, 1);
				popStyle();

				if(depthMap){
					fc = color(128, 128, 128);
					pushStyle();
					noStroke();
					fill(fc);
					rect(j, i, 1, 1);
					popStyle();
				}
			}

			if(antiAliasing){
				int it = 0;
				R = G = B = 0;
				float stp = 255/4;
				pr.set(j, i);

				float w1a = edgeFunction(p2, p3, pr);
				float w2a = edgeFunction(p3, p1, pr);
				float w3a = edgeFunction(p1, p2, pr);

				if (w1a >= 0 && w2a >= 0 && w3a >= 0){
					it += stp;
				}

				pr.set(j+1, i+1);

				w1a = edgeFunction(p2, p3, pr);
				w2a = edgeFunction(p3, p1, pr);
				w3a = edgeFunction(p1, p2, pr);

				if (w1a >= 0 && w2a >= 0 && w3a >= 0){
					it += stp;
				}

				pr.set(j, i+1);

				w1a = edgeFunction(p2, p3, pr);
				w2a = edgeFunction(p3, p1, pr);
				w3a = edgeFunction(p1, p2, pr);

				if (w1a >= 0 && w2a >= 0 && w3a >= 0){
					it += stp;
				}

				pr.set(j+1, i);

				w1a = edgeFunction(p2, p3, pr);
				w2a = edgeFunction(p3, p1, pr);
				w3a = edgeFunction(p1, p2, pr);

				if (w1a >= 0 && w2a >= 0 && w3a >= 0){
					it += stp;
				}

				if (it > 0){
					pr.set(j+0.5, i+0.5);

					w1 = edgeFunction(p2, p3, pr);
					w2 = edgeFunction(p3, p1, pr);
					w3 = edgeFunction(p1, p2, pr);
					w1 /= Area;
					w2 /= Area;
					w3 /= Area;
					R = w1 * red(c1)   + w2 * red(c2)   + w3 * red(c3);
					G = w1 * green(c1) + w2 * green(c2) + w3 * green(c3);
					B = w1 * blue(c1)  + w2 * blue(c2)  + w3 * blue(c3);
				}

				fc = color(R, G, B, 255-it);
				pushStyle();
				noStroke();
				fill(fc);
				rect(j, i, 1, 1);
				popStyle();
			}
		}
	}

	if (debug) {
		pushStyle();
		stroke(255, 255, 0, 125);
		point(round(frame.location(v1).x()), round(frame.location(v1).y()));
		popStyle();
	}
}

void randomizeTriangle() {
  int low = -width/2;
  int high = width/2;
  v1 = new Vector(random(low, high), random(low, high));
  v2 = new Vector(random(low, high), random(low, high));
  v3 = new Vector(random(low, high), random(low, high));
}

void drawTriangleHint() {
  pushStyle();
  noFill();
  strokeWeight(2);
  stroke(255, 0, 0);
  triangle(v1.x(), v1.y(), v2.x(), v2.y(), v3.x(), v3.y());
  strokeWeight(5);
  stroke(0, 255, 255);
  point(v1.x(), v1.y());
  point(v2.x(), v2.y());
  point(v3.x(), v3.y());
  popStyle();
}

void keyPressed() {
  if (key == 'g')
    gridHint = !gridHint;
  if (key == 't')
    triangleHint = !triangleHint;
  if (key == 'd')
    debug = !debug;
  if (key == '+') {
    n = n < 7 ? n+1 : 2;
    frame.setScaling(width/pow( 2, n));
  }
  if (key == '-') {
    n = n >2 ? n-1 : 7;
    frame.setScaling(width/pow( 2, n));
  }
  if (key == 'r')
    randomizeTriangle();
  if (key == ' ')
    if (spinningTask.isActive())
      spinningTask.stop();
    else
      spinningTask.run(20);
  if (key == 'y')
    yDirection = !yDirection;

	if (key == 'm')
		depthMap = (depthMap) ? false : true;
	if (key == 'a')
		antiAliasing = (antiAliasing) ? false : true;
}
