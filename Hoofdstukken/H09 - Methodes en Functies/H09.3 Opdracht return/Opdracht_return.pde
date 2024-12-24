int numA;
int numB;

void setup(){
  numA = methode(7,23);
  numB = methode(57,9);
  
  println(numA);
  println(numB);
}

void draw(){
}

int methode(int numC, int numD){
  int total = (numC+numD)/2;
  return total;
}
