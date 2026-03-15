float shipX;
float starX;
float starY;
float starSpeed;

void setup(){
  size(600,400);
  
  starX=random(width);
  starY=-20;
  starSpeed=3;}
  
  void draw(){
    background(10,10,30);
    
    shipX=mouseX;
    shipX=constrain(shipX,30,width-30);
    
    fill(150,300,255);
    triangle(shipX,height-40,shipX-25,height-10,shipX+25,height-10);
    
   fill(255,200,0);
   rect(shipX-6,height-10,12,15);
   
   fill(255,255,0);
   ellipse(starX,starY,20,20);
   
   starY=starY+starSpeed;
   
   if(starY>height){
     starY=-20;
     starX=random(width);
   }
   
   if(dist(shipX,height-30,starX,starY)<30){
     starY=-20;
     starX=random(width);
   }
  }
