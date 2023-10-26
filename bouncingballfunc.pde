int x;
int y;
int d;
color c;
int xStart = width/5;
int yStart = height/5;
int xSpeed = 5;
int ySpeed = 5;
void setup(){
size(600,600);
fill(0);
x = xStart;
y = yStart;
d = 100;
}
void draw() {
  background(255);
renderButtons();
renderBall();
move();
wallDetect();
textSize(50);
fill(255);
text("+", 55, 340); 
text("-", 60, 410); 
buttonPress();

}

void keyPressed() { //changes to a random color
  random(0,255);
   c= color(random(0,255), random(0,255), random (0,255));
  fill(c);
  println("key was pressed");
 
}
void renderBall(){ //makes the ball
fill(c);
circle(x,y,d);
}
void move(){ //moves the ball
y = y + ySpeed;
x = x + xSpeed;
}
void wallDetect(){ //makes the ball bounce off walls
  if (y >= 600) {
  ySpeed = -abs(ySpeed);
}
if (x >= 600) {
  xSpeed = -abs(xSpeed);
}
if (y <= 0) {
  ySpeed = abs(ySpeed);
}
if (x <= 0) {
  xSpeed = abs(xSpeed);
}
}
void renderButtons(){ //makes the buttons
fill(255,0,0);
stroke(255,0,0);
square(50,300,50);
fill(0,0,255);
stroke(0,0,255);
square(50,370,50);
fill(255);

}
void buttonPress(){ //changes the speed if the button is held down
  if(mousePressed==true && mouseX>=55 & mouseY >=300 && mouseX <=100 && mouseY <=350 && ySpeed >=0 && xSpeed >=0 ){
ySpeed =  ySpeed + 1;
xSpeed =  xSpeed + 1;    
  }
    if(mousePressed==true && mouseX>=55 & mouseY >=300 && mouseX <=100 && mouseY <=350 && ySpeed <=0 && xSpeed <=0 ){
ySpeed =  ySpeed - 1;
xSpeed =  xSpeed - 1;    
  }
   if(mousePressed==true && mouseX>=55 & mouseY >=300 && mouseX <=100 && mouseY <=350 && ySpeed >=0 && xSpeed <=0 ){
ySpeed =  ySpeed + 1;
xSpeed =  xSpeed - 1;    
  }
    if(mousePressed==true && mouseX>=55 & mouseY >=300 && mouseX <=100 && mouseY <=350 && ySpeed <=0 && xSpeed >=0 ){
ySpeed =  ySpeed - 1;
xSpeed =  xSpeed + 1;    
  }
  
  //blue button
  if(xSpeed != 0 || ySpeed != 0){
   if(mousePressed==true && mouseX>=55 & mouseY >=370 && mouseX <=100 && mouseY <=420 && ySpeed <=0 && xSpeed <=0){
ySpeed =  ySpeed + 1;
xSpeed =  xSpeed + 1;
  }
    if(mousePressed==true && mouseX>=55 & mouseY >=370 && mouseX <=100 && mouseY <=420 && ySpeed >=0 && xSpeed >=0){
ySpeed =  ySpeed - 1;
xSpeed =  xSpeed - 1;
  }
  
     if(mousePressed==true && mouseX>=55 & mouseY >=370 && mouseX <=100 && mouseY <=420 && ySpeed <=0 && xSpeed >=0){
ySpeed =  ySpeed + 1;
xSpeed =  xSpeed - 1;
  }
    if(mousePressed==true && mouseX>=55 & mouseY >=370 && mouseX <=100 && mouseY <=420 && ySpeed >=0 && xSpeed <=0){
ySpeed =  ySpeed - 1;
xSpeed =  xSpeed + 1;
  }
  }
  
}
