
float x, y;
String text;
PFont font = createFont("arial", 30);
//PImage applogo, startscreenbg;
Button searchalt, addnew, getstarted, back;
Logo logo;
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
  back = new Button(width*.05, height*.87, 400, 200, "Back", 90, 216, 42, 100);
  logo = new Logo();
  scene = 1;
}
void draw() {
  switch(scene) {
  case 1:
    logo.renderbg();
    logo.renderlogo();
    getstarted.render();
    break;
  case 2:
    logo.renderbg();
    searchalt.render();
    addnew.render();
    back.render();
    logo.renderlogo2();
    break;

  default:
    break;
  }
}

void mousePressed() {
  getstarted.update();
  back.update();
  if (scene==1) {
    if (getstarted.Clicked) {
      scene=2;
    }
  }
  if (scene == 2 && back.Clicked) {
    scene=1;
  }
}
