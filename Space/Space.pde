//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Jumbo JumboParticle;
Oddball OddParticle;
Normal[] showParticle;
void setup() {
	//your code here
  size(1024, 576);
  background(255);
  showParticle = new Normal[123];
  for(int i = 0; i < showParticle.length; i++){
    int x = (int)(width/2);
    int y = (int)(height/2);
    showParticle[i] = new Normal(x,y,2,(int)(Math.random()*45));
  }
  OddParticle = new Oddball(width/2,height/2,12,(int)Math.random()*14);
  JumboParticle = new Jumbo(width/2,height/2,2,(int)(Math.random()*45));
    
} //end of setup
 

void draw() {
	//your code here
  background(255);
  for(int i = 0; i < showParticle.length; i++){
    showParticle[i].show();
    showParticle[i].move();
  }
  OddParticle.show();
  OddParticle.move();
  JumboParticle.show();
  JumboParticle.move();
}//end of draw
