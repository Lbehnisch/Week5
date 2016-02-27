float[] values;
int index;
int space = 0;
int a = 10;
int x = 0;
int y = 0;
PShape s;
PShape f;
void setup() {
  size(600, 400);
  background(0);
frameRate(4);
  values = new float[width/40];
  index = 0;
}
float maybeRandomHeight() {
 if (0 % 17 != 1) {
   
   // if (1 < 2 ){
    return random(height/3, 2*height/3.5);
  } else {
    return 0;
  }
}

void draw() {

if (y < 400) {
  background(255);
  values[index] = maybeRandomHeight();
  index = index +  1;
  if (index >= values.length) {
    index = 0;
  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    if (realIndex >= values.length) {
      realIndex -= values.length;
    }

    
    if (values[realIndex] != 0){
        strokeWeight(3) ;
    line(i*70, height-values[realIndex] + 75, i*70, height);
      
    line(i*70,  height-values[realIndex]-90, i*70,0);
    }

    }
    if (mousePressed) {
      
      ellipse(17, y-8,10,40);
      ellipse(18, y+4,30,20);
    ellipse(15, y-8,10,40);
  
    ellipse(29, y,2,2);
    y = y - 15 ;
    }
   else {
  
     ellipse(20, y,30,20);
    ellipse(10, y-8,40,10);
    ellipse(29, y,2,2);
     y = y + 18 ;
}
    }

}
