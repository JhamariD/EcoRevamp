//PImage applogo, startscreenbg;
Button button;
Logo logo;
//import ketai.camera.*;
//KetaiCamera cam;

void setup() {
  //applogo = loadImage("applogo.png");
  //startscreenbg = loadImage("startscreenbg.jpg");
  fullScreen();
  orientation(PORTRAIT);
  button = new Button(width/2-400, height/1.4, 800, 200, "Take Photo", 90, 216, 42, 50);
  logo = new Logo();
}
void draw() {
  //image(startscreenbg, width/2, height/2, width, height);
  //tint(255, 255);
  //imageMode(CENTER);
  //image(applogo, width/2, height/5);
 logo.render();
  button.update();
  button.render();
  if (button.isClicked()) {
    
  }
}
