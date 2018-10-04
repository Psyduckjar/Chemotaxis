dude [] determined;
//jechen27 source code to make a swithc to change pacmans behavior
PImage ghost, cherry;
int damn = 1;
void setup() {
  size(1000,1000);
  background(0);
  frameRate(60);
  ghost = loadImage("ghost.png");
  cherry = loadImage("cherry.png");
  determined = new dude[20];
  for(int i = 0; i < determined.length; i++) {
    determined[i] = new dude();
  }
}


void draw() {
  background(0);
   if (damn == 1)
   {
     image(cherry,mouseX-14,mouseY-15);
   }
   if (damn != 1) {
     image(ghost,mouseX-21,mouseY-21);
   }
  for(int i = 0; i < determined.length; i++) {
    determined[i].plugWalk();
    determined[i].show();  
  } 
  if(damn == 1)
  text("its on",200,200,100);
  else
   text("its off",200,200,100);
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
  if (mouseX > myX) {
    myX = myX + damn;
  }
  if (mouseX < myX) {
    myX = myX - damn;
  }
  if (mouseY > myY) {
    myY = myY + damn;
  }
  if (mouseX < myY) {
    myY = myY - damn;
  }
  if(damn == -1 && (get(mouseX,mouseY) != color(0,0,0))) {
    background(0,0,0);
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


void mousePressed() {
  damn = damn + 1;
  if(damn == 2) {
    damn = -1;
    print(damn);
  }
}
