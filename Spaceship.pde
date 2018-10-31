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
  public void accelerate (double dAmount)
{  
     //Accelerates the ship in
     //the direction it is pointing
     //(myPointDirection)
	  
     //convert the current direction the ship is
     //pointing to radians
     double dRadians =myPointDirection*(Math.PI/180);
     
     //change coordinates of direction of travel
     myDirectionX += ((dAmount) * Math.cos(dRadians));
     myDirectionY += ((dAmount) * Math.sin(dRadians));    
}
public void deccelerate (double dAmount)
{  
     //Accelerates the ship in
     //the direction it is pointing
     //(myPointDirection)
	  
     //convert the current direction the ship is
     //pointing to radians
     double dRadians = myPointDirection*(Math.PI/180);
     
     //change coordinates of direction of travel
     myDirectionX -= ((dAmount) * Math.cos(dRadians));
     myDirectionY -= ((dAmount) * Math.sin(dRadians));    
}

}
