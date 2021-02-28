float x = 2;
float y = 20;
float pretty = random(1,256);

int speed = 10;

boolean overPancake = true;
boolean downPancake = true;

void setup(){
  size(500, 500);
  background(0,2,0);
  noStroke();
  fill(0);
}

void draw() {
  circle(x, y, 10);
  
  if (overPancake == true){
    x = (x+speed);
  } else {
    x = (x-speed);
  }
  
  if (downPancake == true){
    y = (y+speed);
  } else {
    y = (y-speed);
  }
  
  if (y >= 500|y<=0){
    downPancake = !downPancake;
    fill (pretty);
    pretty = random(1,256);
  }
  if (x >= 500|x<=0){
    overPancake = !overPancake;
    fill (pretty);
    pretty = random(1,256);
  }
}
