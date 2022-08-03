class Graphics
{
  PImage logo, bg;
  PVector Pos = new PVector (0, 0);
  float Width, Height;
  Graphics(float x, float y, float w, float h) {
    bg = loadImage("background.png");
    logo = loadImage("applogo.png");
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
  }

  void renderlogo()
  //draws logo
  {
    tint(255, 255);
    imageMode(CENTER);
    image(logo, Pos.x, Pos.y, Width, Height);
    
  }

  void renderbackground() {
    // draws background
    image(bg, width/2, height/2, width, height);
  }
  
  void texttitle(){
    textSize(100);
    text("eco-eda on the go!", 200,200);
  }
}
