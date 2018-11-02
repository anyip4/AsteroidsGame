class Spaceship extends Floater  
{   
  public Spaceship(){
 	corners = 4;
  	int [] numXcords = {-8, 16, -8, -2};
  	int [] numYcords = {-8, 0 , 8, 0};
  	xCorners = numXcords;
  	yCorners = numYcords;
  	myCenterX = 350;
  	myCenterY = 350;
  	myDirectionX = 0;
  	myDirectionY = 0;
  	myPointDirection = 0; 
  	myColor = 255;
  	noStroke();
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
