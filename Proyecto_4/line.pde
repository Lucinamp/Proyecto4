class Line {
  int x, y;
  int t=int(random(30,60));
  int t2=int(random(30,60));
  color c;
  Line(color c_) {
    this.x = round(random (960));
    this.y = round(random (720));
    this.c=c_;
  }


  void display() {
    noFill();
    stroke(c);
   line(this.x,t2 , t,this.y);
  }
}
