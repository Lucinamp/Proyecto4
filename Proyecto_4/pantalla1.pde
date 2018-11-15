class P1{
  int x, y;
   color c;
 PFont font;
   PFont font1;
  P1(){
    font = loadFont("BebasNeueRegular-50.vlw");
   font1 = loadFont("BebasNeueRegular-150.vlw");
  
    
  }
  void display(){
    if(n==1){
     for (int i = 0; i < columnas; i++) {
     
      for (int j = 0; j < filas; j++) {
        int x = i*tamano;
        int y = j*tamano;
        int loc = (video.width - x - 1) + y*video.width; 
      
        float r = red((video.pixels[loc]));
        float g = green(video.pixels[loc]);
        float b = blue((video.pixels[loc]));
       color c = color(r,g,b);

        pushMatrix();
          fill(c);
          noStroke();
       rect(0,0,960,720);
        popMatrix();
    
  }
}
 textFont(font);
   fill(255);
   text("Presiona 'ENTER'",120,330);
   
   textFont(font1);
   fill(255);
   text("SKY",150,200);
}
  
   if(n==2){
     p2.display();
   }


  

if(keyCode==ENTER){
     n=2;
   }}}
