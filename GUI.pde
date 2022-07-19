class Button {
  PImage button;
  PVector Pos = new PVector (0, 0);
  float Width = 0;
  float Height = 0;
  String Text;
  color Color;
  float TextS;
  boolean Clicked;
  boolean Pressed;
  Button(float x, float y, float w, float h, String t, int r, int g, int b, float ts)
  {
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Color = color(r, g, b);
    Text = t;
    TextS = ts;
  }
  void update() //must be placed in void draw to work
  {
    if (mousePressed == true) {
      if (mouseX>= Pos.x && mouseX <=Pos.x+Width && mouseY>=Pos.y && mouseY <= Pos.y+Height) {
        Clicked = true;
        print("clicked");
      } else {
        Clicked = false;
        print("not clicked");
      }
    }
  }
  void render() //must be placed in void draw to render image
  {
    //for hitbox
    //fill(0);
    //stroke(1);
    //line(0, Pos.y+Height, width, Pos.y+Height);
    //line(0, Pos.y, width, Pos.y);

    //for button
    fill(255, 255, 255, 35);
    tint(255, 128);
    rect(Pos.x, Pos.y, Width, Height);
    noStroke();
    fill(255, 255, 255);
    tint(255, 255);
    textAlign(CENTER, CENTER);
    textSize(TextS);
    text(Text, Pos.x+(Width/2), Pos.y+(Height/2));
  }
  boolean isClicked()
  {
    return Clicked;
  }
}

class Logo { //defines logo
  PImage applogo, startscreenbg;

  Logo() {
    applogo = loadImage("applogo.png");
    startscreenbg = loadImage("background2.png");
  }



  void renderbg() {
    image(startscreenbg, width/2, height/2, width, height);
    tint(255, 255);
    imageMode(CENTER);
  }
  
  void renderlogo(){
     image(applogo, width/2, height/3, 1200, 880);
  }
}
