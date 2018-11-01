class Star 
{
	private int myX, myY;
	private double myColor1, myColor2, myColor3;
	public Star(){
		myX = (int)(Math.random()*700);
		myY = (int)(Math.random()*700);
		myColor1 = Math.random()*255;
		myColor2 = Math.random()*255;
		myColor3 = Math.random()*255;
		noStroke();
	}
	public void show(){	
		fill((int)myColor1,(int)myColor2,(int)myColor3);
		ellipse(myX, myY, 5, 5);
	}
}
