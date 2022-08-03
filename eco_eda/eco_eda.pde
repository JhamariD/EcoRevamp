import android.content.DialogInterface;
import android.app.Activity;
import android.app.AlertDialog;
import android.text.Editable;
import android.widget.EditText;

Graphics rlogo, rbackground, title;
Button searchalt, addnew, getstarted, back, searchalta, addnewa, textboxname, textboxnotes;
Button addnewname, addnewtype, addneworigin;
Activity act;

int scene;
boolean openBox;

String search_field = "", search_field2 = "", dialogType;
String search_field3 = "", search_field4 = "", search_field5 = "";

void setup() {

  openBox= false;
  fullScreen();
  textboxname = new Button(width/2-350, height/4, 900, 150, "", 90, 216, 42, 100);
  textboxnotes = new Button(width/2-350, height/2, 900, 150, "", 90, 216, 42, 100);

  addnewname = new Button(width/2-350, height/2.4, 900, 150, "", 90, 216, 42, 100);
  addnewtype = new Button(width/2-350, height/2, 900, 150, "", 90, 216, 42, 100);
  addneworigin = new Button(width/2-350, height/1.7, 900, 150, "", 90, 216, 42, 100);
  rlogo = new Graphics(width/2, height/3, 1200, 880);

  rbackground = new Graphics(width/2, height/2, width, height);

  searchalt = new Button(width/2-600, height/6, 1200, 200, "Search Alternative", 90, 216, 42, 100);

  addnew = new Button(width/2-600, height/3, 1200, 200, "Add new Component", 90, 216, 42, 100);
  getstarted = new Button(width/2-400, height/1.5, 800, 200, "Get Started", 90, 216, 42, 100);

  back = new Button(width*.05, height*.87, 400, 200, "Back", 90, 216, 42, 100);

  scene =1;
}


void draw() {
  switch(scene) {
  case 1:
    rbackground.renderbackground();
    rlogo.renderlogo();
    getstarted.render();
    break;
  case 2:
    rbackground.renderbackground();
    searchalt.render();
    addnew.render();
    back.render();
    searchalt.arrow();
    addnew.arrow();
    texttitle();
    if (searchalt.open == true) {
      textSize(60);
      fill(255);
      text("Name", width/2-540, height/4+90);
      text("Notes", width/2-540, height/2+90);
      textboxname.render();
      textboxnotes.render();
      textSize(55);
      textAlign(LEFT);
      text(search_field, textboxname.Pos.x+60, textboxname.Pos.y+100);
      text(search_field2, textboxnotes.Pos.x+60, textboxnotes.Pos.y+100);
    }
    if (addnew.open == true) {
      addnewname.render();
      addnewtype.render();
      addneworigin.render();
      textSize(60);
      text("Name", width/2-480, height/2.4+90);
      text("Type", width/2-480, height/2+90);
      text("Origin", width/2-480, height/1.7+90);
      textAlign(LEFT);
      text(search_field3, addnewname.Pos.x+60, addnewname.Pos.y+100);
      text(search_field4, addnewtype.Pos.x+60, addnewtype.Pos.y+100);
      text(search_field5, addneworigin.Pos.x+60, addneworigin.Pos.y+100);
    }

    break;
  }
  println(searchalt.open);
}


void mousePressed() {
  switch(scene) {
  case 1:
    getstarted.update();
    if (getstarted.Clicked) {
      scene=2;
    }
    break;
  case 2:
    back.update();
    searchalt.update();
    addnew.update();



    if (back.Clicked) {
      scene=1;
      searchalt.reset();
      addnew.reset();
    }
    // search alternative button
    if (searchalt.Clicked && searchalt.open == false || searchalt.open == true && mouseX >= width/2-600 && mouseY >=height/6+200 && mouseX <= width/2+600 && mouseY <= height/6+1200)
    {
      searchalt.open = true;
      searchalt.Height = 1200;
      addnew.Pos.y = height/3+ 800;
      
    } else
    {
      searchalt.open = false;
      searchalt.Height = 200;
      addnew.Pos.y = height/3;
    }
    
    if(searchalt.open == true){
      textboxname.update();
    textboxnotes.update();
    }
    if(addnew.open == true){
       addnewname.update();
    addnewtype.update();
    addneworigin.update();
    }
    // add new component button
    if (addnew.Clicked && addnew.open == false || addnew.open == true && mouseX >= width/2-600 && mouseY >=height/3+200 && mouseX <=width/2+600 && mouseY <= height/1.2) {
      addnew.open = true;
      addnew.Height =height/3+500;
      
    } else
    {
      addnew.open = false;
      addnew.Height = 200;
    }
    if (textboxname.Clicked)
    {
      dialogBox();
    }

    if (textboxnotes.Clicked) {
      dialogBox();
    }

    if (addnewname.Clicked) {
      dialogBox();
    }
    if (addnewtype.Clicked) {
      dialogBox();
    }
    if (addneworigin.Clicked) {
      dialogBox();
    }
    break;
  }
}

void dialogBox() {
  act = this.getActivity();
  act.runOnUiThread(new Runnable() {
    public void run() {
      AlertDialog.Builder builder = new AlertDialog.Builder(act);
      final EditText input = new EditText(act);
      builder.setView(input);
      if (textboxname.Clicked || addnewname.Clicked) {
        dialogType = "Name";
      }
      if (textboxnotes.Clicked)
      {
        dialogType = "Notes";
      }
      if (addnewtype.Clicked) {
        dialogType = "Type";
      }
      if (addneworigin.Clicked) {
        dialogType = "Origin";
      }
      builder.setTitle(dialogType);
      builder.setPositiveButton("Enter", new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialog, int whichButton) {
          //String value = input.getText().toString().trim();

          //if last_button == 1:
          //  search_field = text
          if (textboxname.Clicked)
          {
            search_field = input.getText().toString().trim();
          }

          if (textboxnotes.Clicked)
          {
            dialogType = "Notes";
            search_field2 = input.getText().toString().trim();
          }
          if (addnewname.Clicked) {
            search_field3 = input.getText().toString().trim();
          }
          if (addnewtype.Clicked) {
            search_field4 = input.getText().toString().trim();
          }
          if (addneworigin.Clicked) {
            search_field5 = input.getText().toString().trim();
          }
          println(whichButton);
        }
      }
      );
      builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialog, int whichButton) {
          dialog.cancel();
        }
      }
      );
      builder.show();
    }
  }
  );
}


void texttitle() {
  textAlign(LEFT, LEFT);
  textSize(100);
  text("eco-eda on the go!", 200, 200);
}
