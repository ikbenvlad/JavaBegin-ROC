boolean questEen = true;
boolean questTwee = true;
boolean questDrie = true;
boolean baasVerslaan = false;
boolean gameGehaald = false;

if(questEen==true && questTwee==true && questDrie==true && baasVerslaan==true){
  gameGehaald = true;
}else if(questEen==true && questTwee==true && questDrie==true && baasVerslaan==false){
  println("Je moet de baas nog verslaan!!");
}

if(gameGehaald){
  println("gefeliciteerd, je hebt het spel uitgespeeld! ");
}
