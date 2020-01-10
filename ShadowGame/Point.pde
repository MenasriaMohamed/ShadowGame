public class Point{
     float x,y; 
     public Point (){} 
     public Point(float x,float y){
      this.x =x;
      this.y=y;
    }  
    
    public float distans(Point p){  
      return sqrt(pow((this.x -p.x),2)+pow((this.y -p.y),2));
    }
    
}
