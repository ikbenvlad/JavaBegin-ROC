void setup(){
 size(500,500);
}

void draw(){
  background(255,255,255);
  cirkels(250,250,200,10);
}

void cirkels(int x, int y, int size, int aantal){
  for(int i=0; i<aantal; i++){
    ellipse(x-size/2, y, size, size);
    size -=20;
  }
}
