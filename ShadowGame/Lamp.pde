public class Lamp {
 private int step =4; 
 private float err =1 ;
 private float turn = 0.05;
 public Point PosLamp ;
 
 public float r=30;
 public float theta = 2;
 public float theta2 = 1;
 public ArrayList<Line> Lines = new ArrayList<Line>();
 public int n =40 ;
 Form form = new Form(); 
 public Lamp(){
      this.PosLamp = new Point(1012/2,512/2);               
      this.RemplirLine();     
 }
 
 public void RemplirLine(){
   Line Line ;
   float Q = 0.03;
   float x,y,z;
   for(int i =0 ; i< n ; i++){
         z =Q*i;      
         x = r * cos(z) +this.PosLamp.x;
         y = r * sin(z) +this.PosLamp.y;            
         Line = new Line(PosLamp.x ,PosLamp.y ,x ,y);                 
         Line.theta = Q*i; 
         Lines.add(Line);
  }
 
 }
 
  
  public void DrawLamp(){
     form.DrawLines();    
     for(Line l : Lines){
       l.DrawLine(color(50, 14, 250));    
     }
     
     
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
            if((this.PosLamp.y >= l.P2.y-err && this.PosLamp.y <=p.y+err) || (this.PosLamp.y >= p.y-err && this.PosLamp.y <=l.P2.y+err)){
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
      for(Line l : Lines){
        l.LineValues();
        this.GetInter(l);         
      }
      
   }
     
 public void Up(){  
    this.PosLamp.y=this.PosLamp.y-step;    
     for(Line l : Lines){
       l.Up(step);               
      }
   }
  
 public void Down(){  
   this.PosLamp.y=this.PosLamp.y+step;   
   for(Line l : Lines){
       l.Down(step);               
    }
  }
  public void Left(){
   this.PosLamp.x=this.PosLamp.x-step;
   for(Line l : Lines){
       l.Left(step);               
    }  
  }
  
  public void Right(){
    this.PosLamp.x =this.PosLamp.x+step;
     for(Line l : Lines){
       l.Right(step);               
     }
  }
  
  
  public void TurnLeft(){           
    for(Line l : Lines){                                  
     if(l.theta <2*PI){                 
          float x = r * cos(l.theta) +this.PosLamp.x;
          float y = r * sin(l.theta) +this.PosLamp.y;          
          l.Turn(x,y);             
          l.theta += turn;                
        }else{
          l.theta = -2*PI;
       }
     }               
  }
  
  public void TurnRight(){
    for(Line l : Lines){                                  
    
    if(l.theta >-2*PI){
         float x = r * cos(l.theta) +this.PosLamp.x;
         float y = r * sin(l.theta) +this.PosLamp.y;
         l.Turn(x,y);
         l.theta -= turn;                
       }else{
         l.theta = 2*PI;
       }
       
    }
  }
  
}
