class BezierSpline{
  private List<Vector> puntos;
  
  public BezierSpline(List<Vector> puntos){
    this.puntos = puntos;
  }
  
  public void draw3(){
    float ppx, ppy, ppz;
    float upx, upy, upz; 
    Vector auxPunto;
    
    auxPunto = puntos.get(0);
    ppx = auxPunto.x();
    ppy = auxPunto.y();
    ppz = auxPunto.z();
    
    int n = puntos.size() - 1;
    
    for(int i = 0; i <= n-3; i+=3){
      for(float t = 0.0; t < 1; t += 0.01){
        upx = pow(1 - t, 3) * puntos.get(i).x() + 3 * t * pow(1 - t, 2) * puntos.get(i + 1).x() + 3 * pow(t, 2) * (1 - t) * puntos.get(i + 2).x() + pow(t, 3) * puntos.get(i + 3).x();
        upy = pow(1 - t, 3) * puntos.get(i).y() + 3 * t * pow(1 - t, 2) * puntos.get(i + 1).y() + 3 * pow(t, 2) * (1 - t) * puntos.get(i + 2).y() + pow(t, 3) * puntos.get(i + 3).y();
        upz = pow(1 - t, 3) * puntos.get(i).z() + 3 * t * pow(1 - t, 2) * puntos.get(i + 1).z() + 3 * pow(t, 2) * (1 - t) * puntos.get(i + 2).z() + pow(t, 3) * puntos.get(i + 3).z();
        line(ppx, ppy, ppz, upx, upy, upz);
        ppx = upx;
        ppy = upy;
        ppz = upz;
      }
    }
  }
  

  public void draw7(){
    int n = puntos.size();
    Vector point = puntos.get(0);
    Vector aux = null;
    
    for(float t=0; t<=1; t+=0.01){
      aux = new Vector(0, 0, 0);
      
      for (int i=0; i<n; i++){
        aux.add (Vector.multiply(puntos.get(i), combinatoria(n-1,i) * pow(t, i) * pow(1-t, n-1-i)));
      }
      
      line(point.x(), point.y(), point.z(), aux.x(), aux.y(), aux.z());
      point = aux;
    }
  }
  
  private float combinatoria(int n,int p){
    float numerador = factorial(n);
    float denominador = factorial(p) * factorial(n-p);
    
    return numerador / denominador;
  }
  
  private int factorial(int n) {
    int factorial = 1;
    
    while (n!=0) {
      factorial=factorial*n;
      n--;
    }
    
    return factorial;
  }

}
