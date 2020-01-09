public class Lamp {
 private int step =4; 
 public Point PosLamp ;
 public Line Line1 ;
// public Line Line2 ;
 
 public Lamp(){
   
   this.PosLamp = new Point(1012/2,512/2);         
   Line1 = new Line(PosLamp.x ,PosLamp.y ,50 ,50);  
//   Line2 = new Line(PosLamp.x ,PosLamp.y ,70 ,70);  
 }
  
  public void DrawLamp(){
     this.Line1.DrawLine();
   //  this.Line2.DrawLine();
     noStroke(); 
     
     ellipse(this.PosLamp.x,this.PosLamp.y, 20, 20);     
  }
  
  public void Up(){  
   this.PosLamp.y=this.PosLamp.y-step;
   this.Line1.Up(step);
  }
  
  public void Down(){  
   this.PosLamp.y=this.PosLamp.y+step;   
   this.Line1.Down(step);  
  }
  public void Left(){
   this.PosLamp.x=this.PosLamp.x-step;
   this.Line1.Left(step);  
  }
  
  public void Right(){
   this.PosLamp.x =this.PosLamp.x+step;
   this.Line1.Right(step);  
  }  
}
