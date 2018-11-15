class P2 {
int po= 0;

ArrayList <circulo> circulos;
ArrayList<Line>lines;
ArrayList<triangulo>triangulos;

  P2(){
  circulos = new  ArrayList <circulo>();
  lines = new ArrayList <Line>();
  triangulos = new ArrayList <triangulo>();
  }
  void display(){
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  video.loadPixels(); 
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
          fill(c,1);
          noStroke();
       rect(0,0,960,720);
        popMatrix();
      }
      
  }
         
  if (faces.length>0) {   
    po++;
    if(po>1&&po<5){
    for (int z = 0; z<video.height; z+=100) {
      for (int c = 0; c<video.width; c+=100) {
        color d = video.get(z, c);

        circulos.add(new circulo(d));
      }
      
    }}
     if(po>1&&po<3){
    for (int z = 0; z<video.height; z+=100) {
      for (int c = 0; c<video.width; c+=100) {
        color d = video.get(z, c);

        lines.add(new Line(d));
      }
      
    }}
     if(po>1&&po<10){
    for (int m = 0; m<video.height; m+=100) {
      for (int c = 0; c<video.width; c+=100) {
        color d = video.get(m, c);

        triangulos.add(new triangulo(d));
      
      }
      
    }}
  }
  if (faces.length==0){
    po=0;
     for (int i= circulos.size ()-1; i >=0; i--){
      
        
        circulos.remove(i);
      }
       for (int i= lines.size ()-1; i >=0; i--){
      
        
        lines.remove(i);
      }
       for (int i= triangulos.size ()-1; i >=0; i--){
      
        
        triangulos.remove(i);
      }
     
    
  }
  
  for (circulo b : circulos) {

      b.display();
    }
     for (Line b : lines) {

      b.display();
    }
     for (triangulo d : triangulos) {

      d.display();
    }
    
}
  }
