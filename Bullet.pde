class Bullet extends Floater{
	Bullet(Spaceship ship){   
		 myColor = 255;   
		 myCenterX = ship.getX();
		 myCenterY = ship.getY();   
		 
		 myPointDirection = ship.getPointDirection();
		 double dRadians = myPointDirection*(Math.PI/180);

		 myDirectionX = ship.getDirectionX()*(5*Math.cos(dRadians));
		 myDirectionY = ship.getDirectionY()*(5*Math.cos(dRadians));

	}
	public void show(){
		ellipse((int)myCenterX,(int)myCenterY,5,5);
	}
	public void setX(int x){
		myCenterX = x;
	}  
	public int getX(){
		return (int)myCenterX;
	}  
	public void setY(int y){
		myCenterY = y;
	}  
	public int getY(){
	  	return (int)myCenterY;
	}  
	public void setDirectionX(double x){
	  	myDirectionX = x;
	}  
	public double getDirectionX(){
	  	return myDirectionX;
	}   
	public void setDirectionY(double y){
	  	myDirectionY = y;
	}   
	public double getDirectionY(){
	  	return myDirectionY;
	}  
	public void setPointDirection(int degrees){
	  	myPointDirection = degrees;
	}   
	public double getPointDirection(){
	  	return myPointDirection;
	}  

}