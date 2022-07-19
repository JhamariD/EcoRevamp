//PImage applogo, startscreenbg;
Button button;
Button button1;
Logo logo;
Button getstarted;
int scene;
//import ketai.camera.*;
//KetaiCamera cam;

void setup() {
  //applogo = loadImage("applogo.png");
  //startscreenbg = loadImage("startscreenbg.jpg");
  fullScreen();
  orientation(PORTRAIT);
  button = new Button(width/2-400, height/3, 800, 200, "Search Alternative", 90, 216, 42, 50);
  button1 = new Button(width/2-400, height/2.2, 800, 200, "Add new Component", 90, 216, 42, 50);
  getstarted = new Button(width/2-400, height/1.5, 800, 200, "Get Started", 90, 216, 42, 100);
  logo = new Logo();
  scene = 1;
}
void draw() {
  if (scene==1) {

    logo.renderbg();
    getstarted.render();
    //button.render();
    //button1.render();
  }
  if (button.isClicked()) {
    scene=2;
  }


  if (scene==2) {
    logo.renderbg();
  }
}

void mousePressed() {
  button.update();
}
