import java.util.List;

public class VertexVertex{
  private List<Vector> vertexList;
  private float sc;
  
  PShape shapeVer = createShape();
  
  public VertexVertex(List<Vector> vertexL, float sc){
    this.sc = sc;
    this.vertexList = new ArrayList<Vector>();
    
    List<Vector> verticesTmp = new ArrayList();
    
    for(Vector v : vertexL){
      if(!belongTo(verticesTmp, v))
        verticesTmp.add(v);
    }
    
    for(Vector p : verticesTmp){
      this.vertexList.add(p);
    }
  }
  
  
  public boolean belongTo(List<Vector> list, Vector v){
    if(list.size() == 0)
      return false;
    int cont = 0;
    
    for(Vector x : list){
      if( x.x() == v.x() && x.y() == v.y() && x.z() == v.z() ){
        if(cont > 3)
        return true;
        else
        cont++;
      }
    }
    return false;
  }
  
  public void renderMeshInmediate(){
    stroke(0,255,0);
    //fill(255, 0, 0, 125);
    noFill();
    beginShape(TRIANGLES);
    
    for(Vector ver : this.vertexList){
      vertex(ver.x(), ver.y(), ver.z());
    }
    
    endShape();
    this.vertexList = null;
  }
  
  public PShape rednerMeshRetained(){
    shapeVer.beginShape(TRIANGLES);
    shapeVer.stroke(0,255,0);
    //shapeVer.fill(255, 0, 0, 125);
    shapeVer.noFill();
    shapeVer.vertex(vertexList.get(0).x(), vertexList.get(0).y(), vertexList.get(0).z());
    shapeVer.vertex(vertexList.get(1).x(), vertexList.get(1).y(), vertexList.get(1).z());
    shapeVer.vertex(vertexList.get(2).x(), vertexList.get(2).y(), vertexList.get(2).z());
    shapeVer.endShape();
    
    shapeVer.beginShape(TRIANGLES);
    shapeVer.stroke(0,255,0);
    //shapeVer.fill(255, 0, 0, 125);
    shapeVer.noFill();
    shapeVer.vertex(vertexList.get(0).x(), vertexList.get(0).y(), vertexList.get(0).z());
    shapeVer.vertex(vertexList.get(1).x(), vertexList.get(1).y(), vertexList.get(1).z());
    shapeVer.vertex(vertexList.get(3).x(), vertexList.get(3).y(), vertexList.get(3).z());
    shapeVer.endShape();
     
    shapeVer.beginShape(TRIANGLES);
    shapeVer.stroke(0,255,0);
    //shapeVer.fill(255, 0, 0, 125);
    shapeVer.noFill();
    shapeVer.vertex(vertexList.get(0).x(), vertexList.get(0).y(), vertexList.get(0).z());
    shapeVer.vertex(vertexList.get(3).x(), vertexList.get(3).y(), vertexList.get(3).z());
    shapeVer.vertex(vertexList.get(2).x(), vertexList.get(2).y(), vertexList.get(2).z());
    shapeVer.endShape();
     
    shapeVer.beginShape(TRIANGLES);
    shapeVer.stroke(0,255,0);
    //shapeVer.fill(255, 0, 0, 125);
    shapeVer.noFill();
    shapeVer.vertex(vertexList.get(3).x(), vertexList.get(3).y(), vertexList.get(3).z());
    shapeVer.vertex(vertexList.get(1).x(), vertexList.get(1).y(), vertexList.get(1).z());
    shapeVer.vertex(vertexList.get(2).x(), vertexList.get(2).y(), vertexList.get(2).z());
    shapeVer.endShape();
    
    //this.vertexList = null;
    return shapeVer;
  }
}
