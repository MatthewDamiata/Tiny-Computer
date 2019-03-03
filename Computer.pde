ArrayList<Key> myKeys = new ArrayList<Key>();
ArrayList<Text> myText = new ArrayList<Text>();
int textX = 60;
boolean intro = false;

void setup(){
  size(600,550);
  background(240);
  int xiter = 50;
  int res = 65;
  int space = 0;
  for(int i = 0; i < 40; i++){
    if(i < 10){
      myKeys.add(new Key(xiter, 300, Integer.toString(i)));
      xiter += 50;
      if(i == 9) xiter =50;
    }
    if(i < 21 && i > 10){
      myKeys.add(new Key(xiter, 350, Character.toString((char)res)));
      res++;
      xiter +=50;
      if(i == 20) xiter =50;
    }
    if(i < 31 && i > 20){
      myKeys.add(new Key(xiter, 400, Character.toString((char)res)));
      res++;
      xiter +=50;
      if(i == 30) xiter =50;
    }
     if(i < 34 && i > 30){
      myKeys.add(new Key(xiter, 450, Character.toString((char)res)));
      res++;
      xiter +=50;
    }
     if(i < 38 && i > 34){
      if(i == 35) xiter += 200;
      myKeys.add(new Key(xiter, 450, Character.toString((char)res)));
      res++;
      xiter +=50;
      if(i == 37) xiter =50;
    }
  }
  for(int j = 0; j< 4; j++){
    myKeys.add(new Key(200+space,450, " "));
    space+=50;
  }
  myKeys.add(new Key(549,0, Character.toString((char)62)));
}

void mouseClicked(){
  for(Key search : myKeys){
    if(mouseX > 549 && mouseX < 599 && mouseY > 0 && mouseY < 50){
        for(int i = 0; i < myText.size(); i++) myText.get(i).x += i*20;
        intro = true;
        break;
      } else if(mouseX > search.x && mouseX < search.x +50 && mouseY > search.y && mouseY < search.y + 50){
      if(myText.size() > 32) break;
      myText.add(new Text(textX,290,search.symbol));
      if(search.symbol != "I") textX +=15;
    }
  }
}

void draw(){
  if(intro){
    background(255);
    fill(255);
    rect(50,250,500,50);
    textSize(map(myText.size(),1,32,32,24));
    for(Text search : myText){
     fill(random(100,255),random(0,100),random(150,255));
     search.display();
    }
  }
  else{
  rect(50,300,500,200);
  fill(0);
  rect(50,270,500,50);
  fill(255);
  line(50,350,550,350);
  line(50,400,550,400);
  line(50,450,550,450);
  for(Key search : myKeys) search.display();
    fill(255);
    rect(200,450,200,50);
    fill(0);
    text("SPACE", 275, 480);
  for(Text search : myText){
    fill(255);
    search.display();
  }
  }
}
