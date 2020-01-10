public class Form{
 public  ArrayList<Line> Lines = new ArrayList<Line>();  
 private float err = 1;
  
 public Form(){
   this.CreatLines();  
 }  
 
 public void DrawLines(){
   for(Line l : Lines){
      l.DrawLine(153);  
   }  
 }
 
 ////////////////////////////////////Create Lines ////////////////////////////
 public void CreatLines(){
    Line line ;      
    line = new Line(10,0,0,512);
    line.LineValues();
    Lines.add(line);           
    line = new Line(0,20,1012,0);  
     line.LineValues();    
     Lines.add(line);      
     line = new Line(990,0,1012,512);  
     line.LineValues();    
     Lines.add(line);  
     
     line = new Line(0,490,1012,512);  
     line.LineValues();    
     Lines.add(line);  
     
       
 } 
 
 public ArrayList<Point> InterLines(Line l){
   Point p ;
   ArrayList<Point> Points = new ArrayList<Point>();
   for(Line ll : Lines){
     p =l.InterLine(ll);              
     if(p!=null && ((p.x>=ll.P1.x-err && p.x<=ll.P2.x+err)||(p.x>=ll.P2.x-err && p.x<=ll.P1.x+err))
     &&((p.y>=ll.P1.y-err && p.y<=ll.P2.y+err)||(p.y>=ll.P2.y-err && p.y<=ll.P1.y+err))){     
     Points.add(p);}
   }  
  return Points; 
 } 
 
 
 ////////////////////////////////////CreateLines //////////////////////////////////// 
}
