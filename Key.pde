
public class Key{
  int x;
  int y;
  String symbol;
  
  public Key(int myX, int myY, String sym){
    x = myX;
    y = myY;
    symbol = sym;
  }
  
  public void display(){
    textSize(16);
    fill(255);
    rect(x,y,50,50);
    fill(50);
    text(symbol,x+20,y+30);
    fill(255);
  }
  
}
