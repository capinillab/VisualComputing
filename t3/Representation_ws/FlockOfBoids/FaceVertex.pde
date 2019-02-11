import java.util.List;

class FaceVertex{
  List<Face> faceList; 
  List<Vector> vertexList;
  
  FaceVertex(List<Face> faceList, List<Vector> vertexList){
    this.faceList = faceList;
    this.vertexList = vertexList;
  }
  
  void renderInmediate(){
    pushStyle();
    stroke(color(255, 40, 40));
    fill(color(0, 255, 0, 125));
    
    for(Face face: faceList){
      beginShape(TRIANGLES);
      vertex(face.v1.x(),face.v1.y(),face.v1.z());
      vertex(face.v2.x(),face.v2.y(),face.v2.z());
      vertex(face.v3.x(),face.v3.y(),face.v3.z());
      endShape();
    }
    
    faceList = null;
    vertexList = null;
  }
  
  PShape renderRetained() {
    PShape shapeBoid = createShape(GROUP);
    
    for(Face face: faceList){
      PShape shape = createShape();
      shape.beginShape(TRIANGLES);
      
      pushStyle();
      shape.stroke(color(40, 255, 40));
      shape.fill(color(0, 255, 0, 125));
      
      shape.vertex(face.v1.x(),face.v1.y(),face.v1.z());
      shape.vertex(face.v2.x(),face.v2.y(),face.v2.z());
      shape.vertex(face.v3.x(),face.v3.y(),face.v3.z());
      
      shape.endShape();
      shapeBoid.addChild(shape);
    }
    
    return shapeBoid;
  }
}
