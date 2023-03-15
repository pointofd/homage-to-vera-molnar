//PLAYING AROUND WITH RECTANGLES
//DECLARATIONS
int w=200, h=200; //image size
color c=color(0); //background-color
int side = 200;
int margin = 100;

void setup()
{
  size(800, 800);
  background(255);
  noStroke();

  /* this is the easy way to to rotate the rectangles, but it is not generative
   rect(0, 0, side, side);
   push();
   translate(-3, 1);  
   rotate(radians(-0.5));
   rect(side, 0, side, side);
   pop();
   rect(2*side, 0, side, side);
   
   rect(0, side, side, side);
   push();
   translate(3, -2);  
   rotate(radians(0.8));
   rect(side, side, side, side);
   pop();
   rect(side*2, side, side, side);
   
   rect(0, side*2, side, side);
   rect(side, side*2 , side, side);
   rect(side*2, side*2, side, side);
   */
   
   generatePattern();
}

void generatePattern () {
    clear();
    background(255);
    translate(margin, margin);
    
    // rectangle color
    fill(150, 100, 100);

  // generative version
  int rand = (int)random(0, 9);
  int rand2 = (int)random(0, 9);

  // this makes one random rectangle always different than another
  while (rand2 == rand) {
    rand2 = (int)random(0, 9);
  }

  translate(0, -side);
  for (int i = 0; i< 9; i++) {
    if (i % 3 == 0) {
      translate(0, side);
    }
    push();
    // picks the random rectangles and rotates them
    if (rand == i) {
     // translate(30,2);
      rotate(radians(2));
    }
    if (rand2 == i) {
      rotate(radians(-2));
    }
    rect((i % 3 * side), 0, side, side);
    pop();
  }
}

void keyPressed() {
  generatePattern();
}

void draw()
{
}
