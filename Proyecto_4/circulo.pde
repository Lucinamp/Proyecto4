class circulo {
  int x, y;
  int t=int(random(30,60));
  color c;
  circulo(color c_) {
    this.x = round(random (900));
    this.y = round(random (700));
  
    this.c=c_;
    
  }

  void display() {
    fill(c,20);
    strokeWeight(1);
    stroke(random(255),100);
    ellipse(this.x, this.y, t,t);
    
  }
 
    }
  
