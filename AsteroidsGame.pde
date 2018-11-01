Spaceship pog;
Star [] space = new Star[200];

public void setup() 
{
	size(700,700);
  	pog = new Spaceship();
  	for(int i = 0; i < space.length; i++){
  		space[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < space.length; i++){
		space[i].show();
	}
	noStroke();
  	pog.show();
  	pog.move();
}

public void keyPressed(){
	if(key == 'f'){
		pog.setPointDirection((int)(Math.random()*360));
		pog.setX((int)(Math.random()*700));
		pog.setY((int)(Math.random()*700));
		pog.setDirectionX(0);
		pog.setDirectionY(0);
	}
	if(key == 'a'){
		pog.setPointDirection((int)pog.getPointDirection() - 20);
	}
	if(key == 'd'){
		pog.setPointDirection((int)pog.getPointDirection() + 20);
	}
	if(key == 'q'){
		pog.setPointDirection((int)pog.getPointDirection() + 180);
	}
	if(key == 'w'){
		pog.accelerate(4);
	}
	if(key == 's'){
		pog.deccelerate(2);
	}

}