public void setup(){
  size(500,500);
}

int min = 100;
public void draw(){
  background(50,0,100);
  
  drawTriangle(50,height-50,400);
}

public void mousePressed(){
  if(min>10)
    min-=0.5*min;
}
public void drawTriangle(int x, int y,int len){
  if(len<=min){
    triangle(x,y,x+len,y,x+(len/2),y-len);
  }
  else{
    len= len/2;
    drawTriangle(x,y,len);
    drawTriangle(x+(len/2),y-len,len);
    drawTriangle(x+len,y,len);
  }
  }
