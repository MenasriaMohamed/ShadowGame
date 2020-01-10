public class Form{
 public  ArrayList<Line> Lines = new ArrayList<Line>();  
  
 public Form(){
   this.CreatLines();  
 }  
 
 public void DrawLines(){
   for(Line l : Lines){
      l.DrawLine();  
   }  
 }
 
 ////////////////////////////////////Create Lines ////////////////////////////
 public void CreatLines(){
   Line line ;      
    line = new Line(10,0,0,512);
    line.LineValues();
    Lines.add(line);           
    /*line = new Line(0,0,1012,0);  
    line.LineValues();    
    Lines.add(line);  
    line = new Line(5,0,1012,0); 
   // line = new Line(1012,20,1012,500);  
    line.LineValues();  
    Lines.add(line);  
  
    line = new Line(0,512,1012,512);  
    //line.LineValues();  
    Lines.add(line);*/    
 } 
 
 public ArrayList<Point> InterLines(Line l){
   Point p ;
   ArrayList<Point> Points = new ArrayList<Point>();
   for(Line ll : Lines){
     p =l.InterLine(ll); 
     if(p!=null) Points.add(p);
   }  
   
   
  return Points; 
 } 
 
 
 ////////////////////////////////////CreateLines //////////////////////////////////// 
}
