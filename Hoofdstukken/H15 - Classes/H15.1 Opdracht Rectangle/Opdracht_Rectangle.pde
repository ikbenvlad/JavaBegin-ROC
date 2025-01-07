class Rectangle{
  float x;
  float y;
  float width;
  float height;
  
  Rectangle(float x, float y, float width, float height){
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }
  
  void display(){
    rect(x, y, width, height);
  }
}

void setup(){
  size(400,400);
  Rectangle myRectangle = new Rectangle(100,200,150,50);
  myRectangle.display();
}
