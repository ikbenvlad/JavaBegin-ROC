boolean een = true;
boolean twee = false;
boolean drie = false;
boolean vier = true;

if(een==true && twee==false || drie==false && vier==true){
  println("Je hebt geluk, het komt uit op: " + true);
}else if(een==false && twee==true || drie==true && vier==false){
  println("Je hebt helaas geen geluk, het komt uit op: " + false);
}
