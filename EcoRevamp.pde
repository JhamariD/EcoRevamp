//PImage applogo, startscreenbg;
Button searchalt;
Button addnew;
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
  searchalt = new Button(width/2-600, height/6, 1200, 200, "Search Alternative", 90, 216, 42, 100);
  addnew = new Button(width/2-600, height/3, 1200, 200, "Add new Component", 90, 216, 42, 100);
  getstarted = new Button(width/2-400, height/1.5, 800, 200, "Get Started", 90, 216, 42, 100);
  logo = new Logo();
  scene = 1;
}
void draw() {
  if (scene==1) {

    logo.renderbg();
    logo.renderlogo();
    getstarted.render();
  }
  if (scene==2) {
    logo.renderbg();
    searchalt.render();
    addnew.render();
  }
}

void mousePressed() {
  if (scene==1) {
    getstarted.update();
    if (getstarted.isClicked()) {
      scene=2;
    }
  }
}
