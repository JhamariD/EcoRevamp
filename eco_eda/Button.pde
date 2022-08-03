class Button {
  PVector Pos = new PVector(0, 0);
  float Width = 0;
  float Height = 0;
  String Text;
  color Color;
  float TextS;
  boolean Clicked, open;
  int a;
  Button(float x, float y, float w, float h, String t, int r, int g, int b, float ts)
  {
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Color = color(r, g, b);
    Text = t;
    TextS = ts;
    a=35;
  }

  void update() {
    //updates if button has been clicke or not
    if (mousePressed == true)
    {
      if (mouseX>= Pos.x && mouseX <=Pos.x+Width && mouseY>=Pos.y && mouseY <= Pos.y+Height)
      {
        Clicked = true;
      } else
      {
        Clicked = false;
      }
    }
  }


  boolean isClicked()
  {
    return Clicked;
  }

  //boolean isopen()
  //{
  //  return open;
  //}

  void render()
  {
    //Renders text and buttons
    fill(255, 255, 255, a);
    if(searchalt.open){
      a = 50;
    }
    rect(Pos.x, Pos.y, Width, Height);
    noStroke();
    fill(255, 255, 255);
    tint(255, 255);
    textAlign(CENTER, CENTER);
    textSize(TextS);
    text(Text, Pos.x+(Width/2), Pos.y+100);

    {
    }
  }

  //renders arrow
  void arrow() {
    fill(255, 255, 255, 190);
    triangle(Pos.x+1200-90, Pos.y+100-10, Pos.x+1200-120, Pos.y+100-10, Pos.x+1200-105, Pos.y+100+25);
  }

  // resets button position
  void reset() {
    addnew.Height = 200;
    searchalt.Height = 200;
    addnew.Pos.y = height/3;
  }
}
