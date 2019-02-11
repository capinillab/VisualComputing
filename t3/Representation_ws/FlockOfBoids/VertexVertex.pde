import java.util.List;

public class VertexVertex{
  //private List<Vector> vertexList;
  List<Vector> vertexList;
  List<Vector> vertexNeighbordsList;
  
  PShape shapeVer = createShape();
  
  public VertexVertex(List<Vector> vertexArrayList, List<Vector> vertexNeighbordsList){
    //this.sc = sc;
    this.vertexList = vertexArrayList;
    this.vertexNeighbordsList = vertexNeighbordsList;
    
    //List<Vector> verticesTmp = new ArrayList();
    
    //for(Vector v : vertexL){
    //  if(!belongTo(verticesTmp, v))
    //    verticesTmp.add(v);
    //}
    
    //for(Vector p : verticesTmp){
    //  this.vertexList.add(p);
    //}
  }
  
  
  //public boolean belongTo(List<Vector> list, Vector v){
  //  if(list.size() == 0)
  //    return false;
  //  int cont = 0;
    
  //  for(Vector x : list){
  //    if(x.x() == v.x() && x.y() == v.y() && x.z() == v.z()){
  //      if(cont > 3)
  //        return true;
  //      else
  //        cont++;
  //    }
  //  }
  //  return false;
  //}
  
  public void renderMeshInmediate(){
    pushStyle();
    stroke(color(255, 40, 40));
    fill(color(0, 0, 255, 125));
    
    beginShape(TRIANGLES);
    
    for(Vector ver : this.vertexList){
      vertex(ver.x(), ver.y(), ver.z());
    }
    
    endShape();
    
    this.vertexList = null;
    vertexNeighbordsList = null;
  }
  
  public PShape rednerMeshRetained(){
    PShape shapeVer = createShape(GROUP);
    
    PShape shape = createShape();
    shape.beginShape(TRIANGLES);
    pushStyle();
    shape.stroke(color(40, 40, 255));
    shape.fill(color(0, 0, 255, 125));
    
    shape.vertex(vertexList.get(0).x(), vertexList.get(0).y(), vertexList.get(0).z());
    shape.vertex(vertexList.get(1).x(), vertexList.get(1).y(), vertexList.get(1).z());
    shape.vertex(vertexList.get(2).x(), vertexList.get(2).y(), vertexList.get(2).z());
    shape.endShape();
    shapeVer.addChild(shape);
    
    shape = createShape();
    shape.beginShape(TRIANGLES);
    pushStyle();
    shape.stroke(color(40, 40, 255));
    shape.fill(color(0, 0, 255, 125));
    
    shape.vertex(vertexList.get(0).x(), vertexList.get(0).y(), vertexList.get(0).z());
    shape.vertex(vertexList.get(1).x(), vertexList.get(1).y(), vertexList.get(1).z());
    shape.vertex(vertexList.get(3).x(), vertexList.get(3).y(), vertexList.get(3).z());
    shape.endShape();
    shapeVer.addChild(shape);
    
    shape = createShape();
    shape.beginShape(TRIANGLES);
    pushStyle();
    shape.stroke(color(40, 40, 255));
    shape.fill(color(0, 0, 255, 125));
    
    shape.vertex(vertexList.get(0).x(), vertexList.get(0).y(), vertexList.get(0).z());
    shape.vertex(vertexList.get(3).x(), vertexList.get(3).y(), vertexList.get(3).z());
    shape.vertex(vertexList.get(2).x(), vertexList.get(2).y(), vertexList.get(2).z());
    shape.endShape();
    shapeVer.addChild(shape);
    
    shape = createShape();
    shape.beginShape(TRIANGLES);
    pushStyle();
    shape.stroke(color(40, 40, 255));
    shape.fill(color(0, 0, 255, 125));
    
    shape.vertex(vertexList.get(3).x(), vertexList.get(3).y(), vertexList.get(3).z());
    shape.vertex(vertexList.get(1).x(), vertexList.get(1).y(), vertexList.get(1).z());
    shape.vertex(vertexList.get(2).x(), vertexList.get(2).y(), vertexList.get(2).z());
    shape.endShape();
    shapeVer.addChild(shape);
    
    return shapeVer;
  }
}
