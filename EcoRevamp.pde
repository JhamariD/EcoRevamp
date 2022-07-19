//PImage applogo, startscreenbg;
Button button;
Button button1;
Logo logo;
//import ketai.camera.*;
//KetaiCamera cam;

void setup() {
  //applogo = loadImage("applogo.png");
  //startscreenbg = loadImage("startscreenbg.jpg");
  fullScreen();
  orientation(PORTRAIT);
  button = new Button(width/2-400, height/3, 800, 200, "Search Alternative", 90, 216, 42, 50);
    button1 = new Button(width/2-400, height/2.2, 800, 200, "Add new Component", 90, 216, 42, 50);
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
  button1.render();
  if (button.isClicked()) {
    
  }
}
