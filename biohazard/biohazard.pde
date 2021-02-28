PShape s;

void setup(){
  size(500, 500);
  s = loadShape("bio-safty.svg");
  background(255);
}

void draw() {
  shape(s, 100, 100,100,100);
  s.rotate(0.1);
}
