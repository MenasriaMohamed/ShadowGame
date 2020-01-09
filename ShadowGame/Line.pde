public class Line{
 float a ;
 float b ;
 Point P1,P2;  
 public Line(float P1x ,float P1y ,float P2x ,float P2y){
     P1 = new Point(P1x ,P1y);
     P2 = new Point(P2x ,P2y);
     this.LineValues();
  }
  
  public void LineValues(){
  //  y = ax +b
   this.a= (this.P2.y -this.P1.y)/(this.P2.x -this.P1.x);
   this.b =this.P1.y - this.a*this.P1.x;
  } 
    
  public void DrawLine(){
      stroke(153);
      line(this.P1.x,this.P1.y,this.P2.x,this.P2.y);        
  }
 
 public void Up(int step){  
   this.P1.y=this.P1.y-step;
   //this.P2.y=this.P2.y-step;    
}
  
  public void Down(int step){  
     this.P1.y=this.P1.y+step;
     //this.P2.y=this.P2.y+step;    
  }
  public void Left(int step){
       this.P1.x=this.P1.x-step;
       //this.P2.x=this.P2.x-step;
  }
  
  public void Right(int step){
    this.P1.x=this.P1.x+step;
    //this.P2.x=this.P2.x+step;
  }
   
   
  

} 
