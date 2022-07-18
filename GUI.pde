class Button{
  PImage button;
  PVector Pos = new PVector (0,0);
  float Width = 0;
  float Height = 0;
  String Text;
  color Color;
  float TextS;
  boolean Clicked;
  Button(int x, float y, int w, int h, String t, int r, int g, int b, float ts)
  {
    Pos.x = x;
    Pos.y = y;
    Width = w; 
    Height = h;
    Color = color(r,g,b);
    Text = t;
    TextS = ts;
  }
  void update() //must be placed in void draw to work
  {
    if(mousePressed && mouseX>= Pos.x && mouseX <=Pos.x+Width && mouseY >=Pos.y+Height && mouseY <= Pos.y+Height){
      Clicked = true;
    }
  }
  
  void render() //must be placed in void draw to render image
  {
    fill(255,255,255);
    rect(Pos.x,Pos.y,Width,Height);
    
    fill(0);
    textAlign(CENTER,CENTER);
    textSize(TextS);
    text(Text,Pos.x+(Width/2),Pos.y+(Height/2));
    
  }
  boolean isClicked(){
  return Clicked;
  }
}

class Logo{
  PImage applogo, startscreenbg;
  
  Logo(){
     applogo = loadImage("applogo.png");
  startscreenbg = loadImage("startscreenbg.jpg");
  button = new Button(width/2-400, height/3, 800, 200, "Search Alternative",255,255,255, 50);
  }
  
  
  
  void render(){
  image(startscreenbg, width/2, height/2, width, height);
  tint(255, 255);
  imageMode(CENTER);
  image(applogo, width/2, height/8,600,440);

  }
}
