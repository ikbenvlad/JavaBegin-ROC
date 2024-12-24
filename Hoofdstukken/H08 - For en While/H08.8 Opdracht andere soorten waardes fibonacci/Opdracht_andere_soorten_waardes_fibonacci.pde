int antwoord = 0;
int numA = 0;
int numB = 1;

for(int i=0; i<10; i++){
  antwoord=numA+numB;
  println(numA+ "+" +numB+ "=" +antwoord);
  numA=numB;
  numB=antwoord;
}
