Spaceship pog;
Star [] space = new Star[200];
ArrayList <Asteroid> rocks;
int numberofAsteroid = 20;

public void setup() 
{
	size(700,700);
	rocks = new ArrayList <Asteroid>();
	
  	pog = new Spaceship();
  	for(int i = 0; i < space.length; i++){
  		space[i] = new Star();
  	}
  	for(int i = 0; i < numberofAsteroid; i++){
  		rocks.add(new Asteroid());
  	}
}
public void draw() 
{
	background(0);
	//to show the stars
	for(int i = 0; i < space.length; i++){
		space[i].show();
	}

	//to move the asteroids
	for(int i = 0; i < rocks.size(); i++){
		rocks.get(i).show();
		rocks.get(i).move();

		 if(dist(pog.getX(), pog.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 20){
		 	rocks.remove(i);
		 }
  	}
	//to move the spaceship
  	pog.show();
  	pog.move();

  	//to destroy the asteroids

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