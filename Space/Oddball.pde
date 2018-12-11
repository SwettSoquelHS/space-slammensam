class Oddball extends Normal{
  double x_pos;
  double y_pos;
  double speed;
  double angle;
  int colour; 
  
  }
  
  Oddball(int x, int y, int speed, int angle){
    x_pos = x;
    y_pos = y;
    this.speed = speed;
    this.angle = angle;
  }
  
  void move(){
    x_pos = Math.cos(angle) * (speed/2) + x_pos;
    y_pos = Math.sin(angle) * (speed/2) + y_pos;
  }
  
  void show(){ 
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    ellipse(0,0,10,10);
    fill(colour);
    popMatrix();
    
  }
  
}
