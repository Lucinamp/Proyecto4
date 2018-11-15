class triangulo {
  int x, y, x1, y1, x2, y2;
 int t;
  int f;
  color c;
  triangulo (color c_) {
    this.x = round(random (200));
    this.y = round(random (100));
        this.x1 = round(random (200));
    this.y1 = round(random (100));
        this.x2 = round(random (200));
    this.y2 = round(random (100));
    this.t = floor(random(100,200));
    this.f = floor(random(100,200));
    this.c=c_;
  }
  void display() {
    fill(c,150);
  noStroke();
   translate (t*sin(x),f*sin(y));
     
    triangle(this.x, this.y, this.x1,this.y1,this.x2,this.y2);
  }
}
