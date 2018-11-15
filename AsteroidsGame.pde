Spaceship pog;
Asteroid rocks;
Star [] space = new Star[200];


public void setup() 
{
	size(700,700);
	// Asteroid [] rocks = new Asteroid[9];
  	pog = new Spaceship();
  	for(int i = 0; i < space.length; i++){
  		space[i] = new Star();
  	}
  	// for(int i = 0; i < rocks.length; i++){
  	// 	rocks[i] = new Asteroid();
  	// }
  	rocks = new Asteroid();
}
public void draw() 
{
	System.out.println("hi");

	background(0);
	for(int i = 0; i < space.length; i++){
		space[i].show();
	}

	// for(int i = 0; i < rocks.length; i++){
 //  		rocks[i].show();
 //  		rocks[i].move();
 //  	}
  	rocks.show();
  	rocks.move();
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
		pog.turn(-10);
	}
	if(key == 'd'){
		pog.turn(10);
	}
	if(key == 'q'){
		pog.turn(180);
	}
	if(key == 'w'){
		pog.accelerate(4);
	}
	if(key == 's'){
		pog.accelerate(-2);
	}

}