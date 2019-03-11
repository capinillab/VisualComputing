/**

 */

import frames.primitives.*;
import frames.core.*;
import frames.processing.*;

Scene scene, minimap, focus;
PGraphics sceneCanvas, minimapCanvas;
Shape eye;
//Shape torus1, torus2, minimapTorus1, minimapTorus2, eye;

// TODO
Scene minimapXY, minimapXZ, minimapYZ;
PGraphics planeXY, planeXZ, planeYZ;
PGraphics minimapCanvasXY, minimapCanvasXZ, minimapCanvasYZ;
Shape object, minimapObject, minimapObjectXY, minimapObjectXZ, minimapObjectYZ, eyeXY, eyeXZ, eyeYZ;

Graph graph, auxiliaryGraph;


int w = 1280;
int h = 720;
int oW = w / 3;
int oH = h / 3;
int oX = w - oW;
int oY = h - oH;
//boolean showMiniMap = true;

// TODO
int w2 = w/2;
int h2 = h/2;
int sep = 5;

//Choose FX2D, JAVA2D, P2D or P3D
String renderer = P3D;

void settings() {
  size(w, h, renderer);
}

void setup() {
  sceneCanvas = createGraphics(w2, h2, renderer);
  // Standard camera zNear and zFar implementation allows to better
  // display the projection of the scene onto the minimap near plane
  scene = new Scene(this, sceneCanvas) {
    @Override
    public float zNear() {
      if(is3D())
        return 200;
      else
        return super.zNear();
    }
    @Override
    public float zFar() {
      if(is3D())
        return 400;
      else
        return super.zFar();
    }
  };


  // TODO
  object = new Shape(scene, loadShape("rocket.obj"));
  object.scale(0.3);
  object.rotate(new Vector(1,0,0), PI/2);
  object.translate(0,0,50);

  //torus1 = new Torus(scene, color(255, 0, 0));
  //torus1.translate(-30, -30);
  //torus2 = new Torus(torus1, color(0, 0, 255));
  //torus2.translate(80, 0);
  scene.setFieldOfView((float) Math.PI / 3);
  scene.setRadius(150);
  scene.fitBall();

  minimapCanvas = createGraphics(w2, h2, renderer);
  //minimap = new Scene(this, minimapCanvas, w2, h2);
  //minimapTorus1 = new Torus(minimap, color(255, 0, 0));
  //minimapTorus1.translate(-30, -30);
  //minimapTorus2 = new Torus(minimapTorus1, color(0, 0, 255));
  //minimapTorus2.translate(80, 0);

  // TODO

  minimap = new Scene(this, minimapCanvas, w2+sep, h2+sep);
  minimapObject = new Shape(minimap, loadShape("rocket.obj"));
  
  //minimapCanvasXY = createGraphics(w2, h2, renderer);
  //minimapCanvasXZ = createGraphics(w2, h2, renderer);
  //minimapCanvasYZ = createGraphics(w2, h2, renderer);
  minimapXY = new Scene(this, minimapCanvas, w2+sep, h2+sep);
  minimapXZ = new Scene(this, minimapCanvas, 0, h2+sep);
  minimapYZ = new Scene(this, minimapCanvas, w2+sep, 0);
  
  //minimapObjectXY = new Shape(minimapXY, loadShape("rocket.obj"));
  //minimapObjectXZ = new Shape(minimapXZ, loadShape("rocket.obj"));
  //minimapObjectYZ = new Shape(minimapYZ, loadShape("rocket.obj"));
  
  //minimapXZ = new Scene(this, minimapCanvas, w2, 0);
  //minimapYZ = new Scene(this, minimapCanvas, 0, h2);
  ////minimapObjectXZ = new Shape(minimapXZ, loadShape("rocket.obj"));
  //minimapXZ.rotate(0,0, -PI/2);

  if (minimap.is3D())
    minimap.setType(Graph.Type.ORTHOGRAPHIC);
  minimap.setRadius(300);
  minimap.fitBall();
  

  //if (minimapXY.is3D())
  //  minimapXY.setType(Graph.Type.ORTHOGRAPHIC);
  //minimapXY.setRadius(300);
  //minimapXY.fitBall();

  //if (minimapXZ.is3D())
  //  minimapXZ.setType(Graph.Type.ORTHOGRAPHIC);
  //minimapXZ.setRadius(300);
  //minimapXZ.fitBall();

  //if (minimapYZ.is3D())
  //  minimapYZ.setType(Graph.Type.ORTHOGRAPHIC);
  //minimapYZ.setRadius(300);
  //minimapYZ.fitBall();
  
  

  eye = new Eye(minimap);
  //to scale the eye on mouse hover comment:
  eye.setHighlighting(Shape.Highlighting.NONE);
  eye.set(scene.eye());


  eyeXY = new Eye(minimap);
  eyeXY.rotate(new Vector(1,0,0), PI/2);
  //to scale the eye on mouse hover comment:
  eyeXY.setHighlighting(Shape.Highlighting.NONE);
  eyeXY.set(scene.eye());

  eyeXZ = new Eye(minimap);
  eyeXZ.rotate(new Vector(0,1,0), PI/2);
  //to scale the eye on mouse hover comment:
  eyeXZ.setHighlighting(Shape.Highlighting.NONE);
  eyeXZ.set(scene.eye());

  eyeYZ = new Eye(minimap);
  eyeXZ.rotate(new Vector(0,0,1), PI/2);
  //to scale the eye on mouse hover comment:
  eyeYZ.setHighlighting(Shape.Highlighting.NONE);
  eyeYZ.set(scene.eye());
}

void draw() {
  sync();
  handleMouse();
  scene.beginDraw();
  sceneCanvas.background(215, 245, 250);
  scene.traverse();
  scene.drawAxes();
  scene.endDraw();
  scene.display();

  minimap.beginDraw();
  minimapCanvas.background(129, 253, 243);
  minimap.frontBuffer().fill(255, 0, 255, 125);
  minimap.traverse();
  minimap.drawAxes();
  minimap.endDraw();
  minimap.display();


  minimapXZ.beginDraw();
  minimapXZ.frontBuffer().fill(255, 0, 255, 125);
  minimapXZ.frontBuffer().fill(255, 0, 255, 125);
  minimapXZ.traverse();
  //minimapXZ.drawAxes();
  minimapXZ.endDraw();
  minimapXZ.display();

  minimapYZ.beginDraw();
  minimapYZ.frontBuffer().fill(255, 0, 255, 125);
  minimapYZ.frontBuffer().fill(255, 0, 255, 125);
  minimapYZ.traverse();
  //minimapYZ.drawAxes();
  minimapYZ.endDraw();
  minimapYZ.display();
  
  
  
  //graph.render();
  //// shift frames to the auxiliaryGraph
  //minimap.shift(minimapXZ);
  //auxiliaryGraph.render();
  //// shift frames back to the main graph
  //auxiliaryGraph.shift(graph);

}

void sync() {
  Frame.sync(scene.eye(), eye);
  Frame.sync(object, minimapObject);
  //Frame.sync(torus1, minimapTorus1);
  //Frame.sync(torus2, minimapTorus2);
}

void handleMouse() {
  //if (!showMiniMap)
    focus = scene;
  //else
  //  focus = mouseX > width-oW && mouseY > height-oH ? minimap : scene;
}

void mouseMoved() {
  focus.cast();
}

void mouseDragged() {
  if (mouseButton == LEFT)
    focus.spin();
  else if (mouseButton == RIGHT)
    focus.translate();
  else
    focus.scale(focus.mouseDX());
}

void mouseWheel(MouseEvent event) {
  if(g.is3D())
    focus.zoom(event.getCount() * 50);
  else
    focus.scale(event.getCount() * 50);
}

void mouseClicked(MouseEvent event) {
  if (event.getCount() == 2)
    if (event.getButton() == LEFT)
      focus.focus();
    else
      focus.align();
}

void keyPressed() {
  if (key == 's')
    scene.fitBallInterpolation();
  if (key == 'S')
    minimap.fitBallInterpolation();
  if (key == 't')
    if(g.is3D())
      if (focus.type() == Graph.Type.PERSPECTIVE)
        focus.setType(Graph.Type.ORTHOGRAPHIC);
      else
        focus.setType(Graph.Type.PERSPECTIVE);
}
