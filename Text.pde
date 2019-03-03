
public class Text{
  int x;
  int y;
  String sym;
  
  
  public Text(int myX, int myY, String Symbol){
      x = myX;
      y = myY;
      sym = Symbol;
  }
  
  public void display(){
    text(sym, x, y);
  }
  
}
