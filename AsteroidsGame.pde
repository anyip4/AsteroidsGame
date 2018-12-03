Spaceship pog;
Star [] space = new Star[200];
ArrayList <Asteroid> rocks;
int numberofAsteroid = 20;
boolean letterW = false;
boolean letterA = false;
boolean letterS = false;
boolean letterD = false;

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

	//to move the asteroids and destroy them
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

	if(letterA == true){
		pog.turn(-5);
	}
	if(letterD == true){
		pog.turn(5);
	}
	if(letterW == true){
		pog.accelerate(.5);
	}
	if(letterS == true){
		pog.accelerate(-0.25);
	}
}

public void keyPressed(){
	if(key == 'f'){
		pog.setPointDirection((int)(Math.random()*360));
		pog.setX((int)(Math.random()*700));
		pog.setY((int)(Math.random()*700));
		pog.setDirectionX(0);
		pog.setDirectionY(0);
	}
	if(key == 'q'){
		pog.turn(180);
	}
	
	if(key == 'a'){
		letterA = true;
	}
	if(key == 'd'){
		letterD = true;
	}
	if(key == 'w'){
		letterW = true;
	}
	if(key == 's'){
		letterS = true;
	}
}

public void keyReleased(){
	if(key == 'a'){
		letterA = false;
	}
	if(key == 'd'){
		letterD = false;
	}
	if(key == 'w'){
		letterW = false;
	}
	if(key == 's'){
		letterS = false;
	}
}