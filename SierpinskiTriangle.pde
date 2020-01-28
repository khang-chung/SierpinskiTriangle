int count = 1;
public void setup()
{
		size(512, 512);
		background(0);
}
public void draw()
{
		sierpinski(0, height, count);
}
public void mousePressed()//optional
{
	if(count <=256){
	 count *=2;
	}
}
public void sierpinski(int x, int y, int len) 
{		
		fill(color(random(0,255), random(0,255), random(0,255)));
		noStroke();
		

		if(len <= 25) {
			triangle(x, y, x+len, y, x+len/2, y-len);
		} 
		else{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}