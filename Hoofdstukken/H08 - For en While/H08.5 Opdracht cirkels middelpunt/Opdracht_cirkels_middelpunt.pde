size(200,200);
background(255,255,255);

int cirkel = 50;

for(int i=0; i<5; i++){
  ellipse(100,100,cirkel,cirkel);
  cirkel = cirkel - 10;
}
