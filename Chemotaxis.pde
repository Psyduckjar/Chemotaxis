dude [] determined;
//jechen27 source code to make a swithc to change pacmans behavior
void setup() {
  size(1000,1000);
  background(0);
  frameRate(15);
  determined = new dude[20];
  for(int i = 0; i < determined.length; i++) {
    determined[i] = new dude();
  }
}


void draw() {
  background(0);
  for(int i = 0; i < determined.length; i++) {
    determined[i].plugWalk();
    determined[i].show();  
  } 
}



class dude {
  int myX;
  int myY;
  int theColor;
  dude() {
     myX = 500;
     myY = 500;
   //plugWalk = ((int)(Math.random()*7)-7);
      theColor = color(255,143,0);
  }
  
  
  void plugWalk() {
   int plug = (int)(Math.random()*4);
   if(plug == 0) {
     myX = myX + 20;
   }
   if(plug == 1) {
     myX = myX - 20;
   }
   if(plug == 2) {
     myY = myY + 20;
   }
   if(plug == 3) {
     myY = myY - 20;
   }
   if(mouseX > 500 && mouseY > 500) {
     
   }
   if(mouseX < 500 && mouseY > 500) {
   }
   if(mouseX > 500 && mouseY < 500) {
   }
   if(mouseX < 500 && mouseY < 500) {
   }
  }
  void bruh() {
    fill(theColor);
    int rand = (((int)(Math.random()*1000)));
    int dude = (((int)(Math.random()*1000)));  
    text("bruh",rand,dude,100);
  }
  void show() {
    fill(theColor);// create  a condition that bounces the balls back when it touches the border
    arc(myX, myY, 80, 80, -1, PI+QUARTER_PI, PIE); // add text in the arcs to say "bruh"
  //  System.out.println(myX+","+ myY);
    bruh();
    }
}
