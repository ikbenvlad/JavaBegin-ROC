class Person{
  String name;
  int age;
  String gender;
  
  Person(String name, int age, String gender){
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
  
  void showName(){
    println("Name: " + this.name);
  }
  
  void showAge(){
    println("Age: " + this.age);
  }
}

Person persoon1;

void setup(){
  persoon1 = new Person("Ratmir", 17, "Male");
  persoon1.showName();
  persoon1.showAge();
}
