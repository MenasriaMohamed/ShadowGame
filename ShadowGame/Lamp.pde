public class Lamp {
 private int step =4; 
 private float turn = 0.05;
 public Point PosLamp ;
 public Line Line1 ;
 public float r=300;
 public float theta = -2*PI;
 Form form = new Form(); 
 public Lamp(){
     this.PosLamp = new Point(1012/2,512/2);         
     Line1 = new Line(PosLamp.x ,PosLamp.y ,50 ,PosLamp.y);  
   //Line2 = new Line(PosLamp.x ,PosLamp.y ,70 ,70);  
 }
  
  public void DrawLamp(){
     form.DrawLines();
      
     this.Line1.DrawLine();
     
     
          
   //this.Line2.DrawLine();
     noStroke();      
     ellipse(this.PosLamp.x,this.PosLamp.y, 20, 20);     
  }
  
  public void GetInterLines(){
    this.Line1.LineValues();
    Point PP =null;
    float D;
    float Dens =1000000;
    ArrayList<Point> Points =form.InterLines(this.Line1);
      println(Points.size());
      if( Points!=null &&Points.size()>0){
       for(Point p : Points){
           D=this.Line1.P1.distans(p);         
           if(D<Dens){
           Dens=D;
           println(D);
           PP=p;
          }                
       }
       if(PP!=null)
        this.Line1.Turn(PP.x,PP.y);
      }
       
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
  
  
  public void TurnLeft(){           
      if(theta <2*PI){
         float x = r * cos(theta) +this.PosLamp.x;
         float y = r * sin(theta) +this.PosLamp.y;
         this.Line1.Turn(x,y);    
         theta += turn;                
       }else{
         theta = -2*PI;
       }
  }
  
  public void TurnRight(){
    if(theta >-2*PI){
         float x = r * cos(theta) +this.PosLamp.x;
         float y = r * sin(theta) +this.PosLamp.y;
         this.Line1.Turn(x,y);
         theta -= turn;                
       }else{
         theta = 2*PI;
       }
  }
  
}
