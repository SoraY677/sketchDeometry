final int GEOMETRY_NUM = 120;
final int oneAngle = 360 / GEOMETRY_NUM;

void setup(){
  size(500,500);
  background(255);
}

void draw(){
  
  if(mousePressed){
  float circlex = mouseX - 250;
  float circley = 250 - mouseY;
  float nowAngle= 0;
  
  //cursor pointing position from center
  float length = sqrt(circley * circley  + circlex * circlex);
  
  /*=== calc angle from tan ===*/
  if(circley >= 0){
    nowAngle = degrees(atan2(circley,circlex));  
  }
  else{
    nowAngle = 360 + degrees(atan2(circley,circlex)); 
  }
  
  
  
  for(int anglei = 0; anglei < 360; anglei += oneAngle){
    float targetAngle = nowAngle + anglei;
    targetAngle = (targetAngle > 360)? targetAngle - 360 : targetAngle;
    
    strokeWeight(2);
    stroke(0,0,0); 
    point(length*cos(radians(targetAngle)) + 250 ,250 -length * sin(radians(targetAngle)));
  }
  }
}
