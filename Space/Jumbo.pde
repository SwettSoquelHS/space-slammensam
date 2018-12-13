class Jumbo extends Normal{
  double x_pos;
  double y_pos;
  double speed;
  double angle;
  int colour;
  
  Jumbo(int x, int y, int speed, int angle){
    super(x, y, speed, angle);
    x_pos = x;
    y_pos = y;
    this.speed = speed;
    this.angle = angle;
  }
  
  void move(){
    x_pos = Math.cos(angle) * speed + x_pos;
    y_pos = Math.sin(angle) * speed + y_pos;
  }
  
  void show(){ 
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    ellipse(0,0,100,100);
    fill(colour);
    popMatrix();
    
  }
  
}
