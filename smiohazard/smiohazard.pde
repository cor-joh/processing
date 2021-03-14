PShape s;
PShape cc;
int x = 100;
boolean overPancake = true;
float angle = HALF_PI;


void setup(){
  size(500, 500);
  s = loadShape("bio-safty.svg");
  cc = loadShape("bio-safty.svg");

  background(0);
  fill(134, 179, 0);
  circle(250,250,500);
}

void draw() {
  //left eye
  shape(s, 140, 150,40,40);
  s.rotate(0.1);
  //right eye
  shape(s, 360, 150,40,40);
    //line mouth
  //shape(cc, x, 290,60,60);

  if (overPancake == true){
      angle = (angle + 0.03);
    } else {
      angle = (angle - 0.03);
    }

 if (angle >= PI || angle < 0){
    overPancake = !overPancake;
  }
  
  //smiling mouth
  float radius = 150;
  float xMouth = 225+radius*cos(angle);
  float yMouth = 225+radius*sin(angle);
  fill(255);
  shape(cc, xMouth, yMouth, 50,50); 
}
