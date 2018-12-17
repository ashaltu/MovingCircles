FollowBall[] balls = new FollowBall[8];

void setup(){
  size(400,400);
  for(float i = 0; i < 7*PI/4; i+=(PI/4)){
    balls[round(i*4/PI)] = new FollowBall(i);
  }
}

void draw(){
  background(255);
  noStroke();
  fill(0,255,0);
  for(FollowBall ball: balls){
   ball.calculateCirclePath(); 
  }
}
