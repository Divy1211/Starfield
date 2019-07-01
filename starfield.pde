Star s[] = new Star[1600];
float speed;
void setup() {
  size(900, 900,P2D);
  int c = 0;
  while(c < 1600) {
    s[c] = new Star();
    c++;
  }
}

void draw() {
  speed = map(mouseX,0,width,0,75); 
  translate(width/2,height/2);
  background(0);
    int c = 0;
    while(c < 1600) {
    s[c].show();
    s[c].update();
    c++;
  }
}
