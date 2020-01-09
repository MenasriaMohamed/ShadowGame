import java.util.*;
 Lamp lamp =new Lamp();
 
 void setup()
 { 
    size(1012,512);   
 }

 void draw()
 { 
   clear();
   background(color(100,250,166));    
   lamp.DrawLamp();   
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
    }
    
    
  
//}
}
 
 
 void mouseClicked()
 {    
 }
