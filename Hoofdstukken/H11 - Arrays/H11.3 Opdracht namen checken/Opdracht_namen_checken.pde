boolean gevonden;
String[] namen = {"Diederik", "Ratmir", "Ali", "Sebastiaan", "Jan"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    if(namen[i] == "Jan"){
      gevonden = true;
        println("Deze naam werd gevonden!");
    }
  }
}
