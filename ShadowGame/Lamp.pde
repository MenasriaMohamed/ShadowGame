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
    float D;
    ArrayList<Point> Points =form.InterLines(this.Line1);
    println(Points.size());
       this.Line1.Turn(Points.get(0).x,Points.get(0).y);
       for(Point p : Points){
          D=this.Line1.P1.distans(p);       
          println(" dfdfdf"+D);      
       }   
  }
   
  
  public void Up(){  
   this.PosLamp.y=this.PosLamp.y-step;
   this.Line1.Up(step);       
   GetInterLines();  
 }
  
  public void Down(){  
   this.PosLamp.y=this.PosLamp.y+step;   
   this.Line1.Down(step);
  GetInterLines();  
}
  public void Left(){
   this.PosLamp.x=this.PosLamp.x-step;
   this.Line1.Left(step);  
   GetInterLines();  
  }
  
  public void Right(){
    this.PosLamp.x =this.PosLamp.x+step;
    this.Line1.Right(step);  
    GetInterLines();     
  }
  
  
  public void TurnLeft(){           
      if(theta <2*PI){
         float x = r * cos(theta) +this.PosLamp.x;
         float y = r * sin(theta) +this.PosLamp.y;
         this.Line1.Turn(x,y);    
         GetInterLines();  
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
         GetInterLines();  
         theta -= turn;                
       }else{
         theta = 2*PI;
       }
  }
  
}
