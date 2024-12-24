int numA = 5;

void setup(){
  methode(numA, 5);
  methode(numA, 25);
}

void draw(){
}

void methode(int numB, int numC){
  int total = (numB+numC)/2;
  println("Som = " + numB + " + " + numC + " / 2 = " + total);
}
