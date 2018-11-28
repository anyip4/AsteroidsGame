
class Asteroid extends Floater{
	private int randomRotation;
	public Asteroid(){
		corners = 6;
	  	int [] numXcords = {-8, 3, 1, 11,-6, -7};
	  	int [] numYcords = {-8, -5, 2, 10, 8, 0};
	  	xCorners = numXcords;
	  	yCorners = numYcords;
	  	myCenterX = (int)(Math.random()*700);
	  	myCenterY = (int)(Math.random()*700);
	  	myDirectionX = (int)(Math.random()*8)-4;
	  	myDirectionY = (int)(Math.random()*8)-4;
	  	myPointDirection = (int)(Math.random()*360); 
	  	myColor = 150;
	  	randomRotation = (int)(Math.random()*20)-10;


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
	public int getRandomRotation(){
		return randomRotation;
	}
	public void move(){
		myPointDirection += randomRotation;
		//change the x and y coordinates by myDirectionX and myDirectionY       
		myCenterX += myDirectionX;    
		myCenterY += myDirectionY;     
		//wrap around screen    
		if(myCenterX >width){     
		  myCenterX = 0;    
		}    
		else if (myCenterX<0){     
		  myCenterX = width;    
		}    
		if(myCenterY >height){    
		  myCenterY = 0;    
		} 
		else if (myCenterY < 0){     
		  myCenterY = height;    
		} 
	}
}