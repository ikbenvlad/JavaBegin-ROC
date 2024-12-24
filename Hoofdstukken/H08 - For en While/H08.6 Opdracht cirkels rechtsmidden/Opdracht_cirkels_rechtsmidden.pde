size(102,102);
background(255,255,255);

int cirkel = 100;

for(int i = 0; i < 5; i++){
  ellipse(100 - cirkel/2, 50, cirkel,cirkel);
  cirkel = cirkel - 10;
}
