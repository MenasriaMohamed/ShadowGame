import java.util.*;
 Lamp lamp =new Lamp(); 
 boolean b = false ;
 Point P1 ,P2 ;
 Line Line1 ,Line2;
 void setup()
 { 
    size(1012,512);
   
     
 }
 void draw()
 { 
   clear();
   background(color(100,60,166));      
     lamp.GetInterLines();
  
   lamp.DrawLamp();     
   
if(b==true){
     stroke(53);
     line(P1.x,P1.y ,mouseX,mouseY);
   }
 }
 
 void keyPressed() {
  //if (keyPressed) {
    if (keyCode == UP) {    
     lamp.Up();
    }else
    if (keyCode == DOWN) {
      lamp.Down();
    }else 
    if (keyCode == LEFT) {
      lamp.Left();
    }else
    if (keyCode == RIGHT) {
      lamp.Right();
    }else 
    if(keyCode == 'z' || keyCode == 'Z'){
     lamp.TurnLeft();
    }
    if(keyCode == 's' || keyCode == 'S'){
     lamp.TurnRight();
    }
  
//}
}
 
 
 void mouseClicked()
 {
   if(b==false){
     P1 =new Point(mouseX ,mouseY);     
     b=true;
   }else{
      P2 =new Point(mouseX ,mouseY);     
      Line l = new Line(P1.x ,P1.y ,P2.x,P2.y);
      l.LineValues();
      lamp.form.Lines.add(l);
      b=false;
   } 
   
 }
