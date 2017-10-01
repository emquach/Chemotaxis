Bacteria [] ge;
 int x;
 int y;
 void setup()   
 {     
   size(500,500);
   ge = new Bacteria [10000];
  for(int i = 0; i < ge.length;i++)
  {
    ge[i] = new Bacteria();
  }
 }//   
 void draw()   
 {    

background (255);
frameRate(50);
   for(int i = 0; i < ge.length;i++)
  {
  ge[i].show();
  ge[i].move();

 }  
 }
 class Bacteria    
 {     
   int myX, myY;
 Bacteria()
 {
   myX = 150;
   myY = 150;
 }
 
void move()
{
    
       if (mouseX < myX)
       {
         myX = myX + (int)(Math.random() * 90) - 30;
       }

       else 
       {
         myX = myX + (int)(Math.random() * 90) - 60;  
       }

       if (mouseY < myY)
       {
         myY = myY + (int)(Math.random() * 90) - 30;
       }

       else 
       {
         myY = myY + (int)(Math.random() * 90) - 60;
       }
    
    
    if(myX > 470){
       myX = 470;
     }
     if( myX < 30){
       myX = 30;
     }

     if(myY > 470){
       myY = 470;
     }
     if(myY < 30)
     {
       myY = 30;
     }
  }
 void show()
 {
   noFill();
   stroke(mouseX-300,mouseY-400,50);
   ellipse(myX,myY, 10,10);
 
 
 }
 }