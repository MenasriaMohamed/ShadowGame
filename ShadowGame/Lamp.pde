public class Lamp {
 private int step =4; 
 private float err =1 ;
 private float turn = 0.05;
 public Point PosLamp ;
 public Line Line1 ;
 public Line Line2 ;
 public float r=30;
 public float theta = -2*PI;
 public float theta2 = 1;
 
 Form form = new Form(); 
 public Lamp(){
     this.PosLamp = new Point(1012/2,512/2);         
     Line1 = new Line(PosLamp.x ,PosLamp.y ,540 ,PosLamp.y);  
     float x = r * cos(theta2) +this.PosLamp.x;
     float y = r * sin(theta2) +this.PosLamp.y;             
     Line2 = new Line(PosLamp.x ,PosLamp.y ,x ,y);  
 }
  
  public void DrawLamp(){
     form.DrawLines();    
     
     this.Line1.DrawLine(color(50, 14, 250));
     this.Line2.DrawLine(color(50, 14, 250));  
     noStroke();      
     ellipse(this.PosLamp.x,this.PosLamp.y, 20, 20);     
  }
  
  public void  GetInter(Line l){
    Point PP =null;
    float D;
    float Dens =1000000;    
    boolean take =true;
    ArrayList<Point> Points =form.InterLines(l);     
      if(Points.size()>0){
       for(Point p : Points){
            D=l.P1.distans(p);                         
            take =true;            
           if((this.PosLamp.x >= l.P2.x-err && this.PosLamp.x <=p.x+err) || (this.PosLamp.x >= p.x-err && this.PosLamp.x <=l.P2.x+err)){
             take= false;
           } 
           if((this.PosLamp.y >= this.Line1.P2.y-err && this.PosLamp.y <=p.y+err) || (this.PosLamp.y >= p.y-err && this.PosLamp.y <=this.Line1.P2.y+err)){
              take= false;
           }                                 
           if(D<Dens && take){
             Dens=D;          
             PP=p;
          }         
       }
       if(PP!=null)                                               
            l.Turn(PP.x,PP.y); 
       }
  }
  
  public void GetInterLines(){
      this.Line1.LineValues();
      this.Line2.LineValues();
      this.GetInter(this.Line1);   
      this.GetInter(this.Line2);   
  }
     
 public void Up(){  
    this.PosLamp.y=this.PosLamp.y-step;
    this.Line1.Up(step);  
   this.Line2.Up(step);  
 }
  
 public void Down(){  
   this.PosLamp.y=this.PosLamp.y+step;   
   this.Line1.Down(step);  
   this.Line2.Down(step);    
 }
  public void Left(){
   this.PosLamp.x=this.PosLamp.x-step;
   this.Line1.Left(step);
   this.Line2.Left(step);   
  }
  
  public void Right(){
    this.PosLamp.x =this.PosLamp.x+step;
    this.Line1.Right(step);  
    this.Line2.Right(step);      
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
       
      if(theta2 <2*PI){
        
          float x = r * cos(theta2) +this.PosLamp.x;
          float y = r * sin(theta2) +this.PosLamp.y;
          this.Line2.Turn(x,y);             
          
          theta2 += turn;                
        }else{
          theta2 = -2*PI;
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
       
       if(theta2 >-2*PI){
         float x = r * cos(theta2) +this.PosLamp.x;
         float y = r * sin(theta2) +this.PosLamp.y;
         this.Line2.Turn(x,y);
         theta2 -= turn;                
       }else{
         theta2 = 2*PI;
       }
       
   }
  
}
