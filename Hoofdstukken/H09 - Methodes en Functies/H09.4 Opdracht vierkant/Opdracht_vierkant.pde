void setup(){
  size(200, 200);
  background(255);
  vierkant(50, 50, 100, 100);
}

void draw(){
  noLoop();
}

void vierkant(int numb, int numb2, int numb3, int numb4){
  line(numb, numb2, numb + numb3, numb2);
  line(numb + numb3, numb2, numb + numb3, numb2 + numb4);
  line(numb + numb3, numb2 + numb4, numb, numb2 + numb4);
  line(numb, numb2 + numb4, numb, numb2);
}
