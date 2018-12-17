class FollowBall{
  PVector location, t;
  
  float dr;
  float radius = 40, size = 10, maxRadius = 70;;
  float speed = PI/30;
  
  FollowBall(float start){
    location = new PVector(200,200);
    t = new PVector(start,start);
    dr = -2;
  } 
  
  void calculateCirclePath(){
    //draw ball on screen starting with mouseLocation and adding location vector
    ellipse(mouseX+location.x, mouseY+location.y,size,size);
  
    //change t by speed to set vector to 8 key points of making a circle
    t.add(new PVector(speed,speed));    
   
    //move ball in and move ball out to maxRaidus
    radius+=dr;
    if(radius<0 || radius>maxRadius) dr=-dr;
    
    //make ball circle mouse location using unit circle and multiplying by radius
    location.set(radius * cos(t.x), radius * sin(t.y));
  }
  
  
}
