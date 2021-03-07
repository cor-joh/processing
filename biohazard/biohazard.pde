PShape s;
PShape cc;
int x = 100;
boolean overPancake = true;

void setup(){
  size(500, 500);
  s = loadShape("bio-safty.svg");
  cc = loadShape("bio-safty.svg");

  background(0);
  fill(134, 179, 0);
  circle(250,250,500);
}

void draw() {
  shape(s, 140, 150,40,40);
  s.rotate(0.1);

  shape(s, 360, 150,40,40);

  shape(cc, x, 290,60,60);
  // cc.translate(x,0);
  
  if (overPancake == true){
      x = (x+10);
    } else {
      x = (x-10);
    }

 if (x >= 350 || x < 100){
    overPancake = !overPancake;
  }
}
