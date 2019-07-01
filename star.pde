class Star {
  float x,y,z,pz;
  Star() {
    x = random(-width,width);
    y = random(-height,height);
    z = random(width);
    pz = z;
  }
  
  
  void show() {
    noStroke();
    fill(255);
    float sx = map(x/z,0,1,0,width),sy = map(y/z,0,1,0,height),r = map(z,0,width,16,0);
    ellipse(sx,sy,r,r);
    float px = map(x/pz,0,1,0,width),py = map(y/pz,0,1,0,height);
    stroke(50);
    if(speed >= 50)
    line(px,py,sx,sy);
}
  
  
  void update() {
    z-=speed;
    if(z < 1) {
    x = random(-width,width);
    y = random(-height,height);
    z = width;
    pz = z;
    }
  }
}
