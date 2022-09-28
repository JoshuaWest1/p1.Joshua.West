import processing.sound.*;
SoundFile file;
int circle1X, circle1Y;
int circle2X, circle2Y;
int circle3X, circle3Y;
int circle4X, circle4Y;
float transparency = 255;

int circleS1X, circleS1Y;
int circleS2X, circleS2Y;
int circleS3X, circleS3Y;
int circleS4X, circleS4Y;

int circleMEMEX, circleMEMEY;

boolean unlocked = false;

int circleSize = 90;     // Diameter of rect
color circleColor1, circleColor2, circleColor3, circleColor4,circleColorS1, circleColorS2, circleColorS3, circleColorS4, circleColorMEME, BackgroundColor;
color circleHighlight;
color currentColor;
color DefaultColor = color(00,00,70);
color ServiceGreen = color(00,70,00);
color ServiceYellow= color(150,150,00);
color ServiceGrey = color(150,150,150);
color LitColor = color(100,100,1000);
color LitYellow = color(215,215,0);
color LitGreen = color(100,200,100);
color LitGrey = color(300,300,300);

boolean circleOver1 = false;
boolean circleOver2 = false;
boolean circleOver3 = false;
boolean circleOver4 = false;

boolean circleOverS1 = false;
boolean circleOverS2 = false;
boolean circleOverS3 = false;
boolean circleOverS4 = false;
boolean circleOverMEME = false;


boolean clicked = false;
PGraphics SourceImage;
PGraphics MaskImage;
PImage Rectangle, maskImage;
PImage open, close, keyhole;
PImage still, mov;
PImage Dang;
PImage img, bell, b1, b2, b3, b4, b5, b6, b7, b8;
int CurrentFloor = 1;
int nextfloors[] = new int[4];
boolean f1= false,f2= false,f3= false,f4 = false;
float Xpos = 635;
float current = 635;
int savedTime;
int totalTime = 5000;
void setup() {
  size(800, 1000);
  nextfloors[0] = 0;
  nextfloors[1] = 0;
  nextfloors[2] = 0;
  nextfloors[3] = 0;
savedTime = millis();

 

 
 
 
  // Uncomment the following two lines to see the available fonts 
 

  
  
  
  
  circleColor1 = DefaultColor;
  circleColor2 = DefaultColor;
  circleColor3 = DefaultColor;
  circleColor4 = DefaultColor;
  
  circleColorS1 = ServiceGreen;
  circleColorS2 = ServiceGreen;
  circleColorS3 = ServiceYellow;
  circleColorS4 = ServiceGrey;
  
  circleColorMEME = color(75, 0, 130);

  
  
  img = loadImage("Steel2.jpg");
  img.resize(800,1000);
  bell = loadImage("Bell.png");
  bell.resize(50,50);
  open = loadImage("Open.PNG");
  open.resize(120,60);
  close = loadImage("Close.PNG");
  close.resize(140,60);
  keyhole = loadImage("Key.PNG");
  keyhole.resize(125,125);
  Dang = loadImage("Dang.png");
  Dang.resize(410,610);
  //  rect(185,105,420,620,15);

  
  
  
  
  b1 = loadImage("Braille_1.png");
  b1.resize(40,25);
  b2 = loadImage("Braille_2.png");
  b2.resize(40,25);
  b3 = loadImage("Braille_3.png");
  b3.resize(40,25);
  b4 = loadImage("Braille_4.png");
  b4.resize(40,25);
  b5 = loadImage("Braille_5.png");
  b5.resize(70,25);
  b6 = loadImage("Braille_6.png");
  b6.resize(70,25);
  b7 = loadImage("Braille_7.png");
  b7.resize(70,25);
  b8 = loadImage("Braille_8.png");
  b8.resize(60,25);
  
  circleHighlight = color(100,100,100);
  circle1X = width/2+circleSize/2-350;
  circle1Y = height-350;
  circle2X = width/2+circleSize/2-350;
  circle2Y = height-500;
  circle3X = width/2+circleSize/2-350;
  circle3Y = height-650;
  circle4X = width/2+circleSize/2-350;
  circle4Y = height-800;
  
  circleS1X = width/2+circleSize/2+250;
  circleS1Y = height-350;
  circleS2X = width/2+circleSize/2+250;
  circleS2Y = height-500;
  circleS3X = width/2+circleSize/2+250;
  circleS3Y = height-650;
  circleS4X = width/2+circleSize/2+250;
  circleS4Y = height-800;
  
  circleMEMEX = width/2+circleSize/2-50;
  circleMEMEY = height-150;
  
  
  ellipseMode(CENTER);
  file = new SoundFile(this, "vine-boom.mp3");
  
}

void draw() {
  update(mouseX, mouseY);
background(0);
image(img,0,0);
int passedTime = millis() - savedTime;

 
 //185
 //330
 //485
 //635


strokeWeight(4);
 if(f1 == true){
  if (passedTime > totalTime) {
       Xpos = 635;  CurrentFloor = 1;  f1 = false;  passedTime = 0;  savedTime = millis();  circleColor1 = DefaultColor;
 }}
 
 if(f2 == true){
     if (passedTime > totalTime) {
        Xpos = 485;  CurrentFloor = 2;  f2 = false;  passedTime = 0;  savedTime = millis();  circleColor2 = DefaultColor;
 }}

 if(f3 == true){
     if (passedTime > totalTime) {
        Xpos = 330;   CurrentFloor = 3;  f3 = false;  passedTime = 0;  savedTime = millis();  circleColor3 = DefaultColor;
 }}

 if(f4 == true){
     if (passedTime > totalTime) {
        Xpos = 185;  CurrentFloor = 4;  f4 = false;  passedTime = 0;  savedTime = millis();  circleColor4 = DefaultColor;
}}

 
 
 
 
 
  
  if (circleOver1) {
    fill(circleHighlight);
  } else {
    fill(circleColor1);
  }
  stroke(circleHighlight);
  ellipse(circle1X, circle1Y, circleSize, circleSize);
  
  
  if (circleOver2) {
    fill(circleHighlight);
  } else {
    fill(circleColor2);
  }
  stroke(circleHighlight);
  ellipse(circle2X, circle2Y, circleSize, circleSize);
  
  ///

  if (circleOver3) {
    fill(circleHighlight);
  } else {
    fill(circleColor3);
  }
  stroke(circleHighlight);
  ellipse(circle3X, circle3Y, circleSize, circleSize);
  
  
  if (circleOver4) {
    fill(circleHighlight);
  } else {
    fill(circleColor4);
  }
  stroke(circleHighlight);
  ellipse(circle4X, circle4Y, circleSize, circleSize);
  
  /////////////////////////
  
  if (circleOverS1) {
    fill(circleHighlight);
  } else {
    fill(circleColorS1);
  }
  stroke(circleHighlight);
  ellipse(circleS1X, circleS1Y, circleSize, circleSize);
  
  
  if (circleOverS2) {
    fill(circleHighlight);
  } else {
    fill(circleColorS2);
  }
  stroke(circleHighlight);
  ellipse(circleS2X, circleS2Y, circleSize, circleSize);
  
  ///

  if (circleOverS3) {
    fill(circleHighlight);
  } else {
    fill(circleColorS3);
  }
  stroke(circleHighlight);
  ellipse(circleS3X, circleS3Y, circleSize, circleSize);
  
  
  if (circleOverS4) {
    fill(circleHighlight);
  } else {
    fill(circleColorS4);
  }
  stroke(circleHighlight);
  ellipse(circleS4X, circleS4Y, circleSize, circleSize);
  
  
  if (circleOverMEME) {
    fill(circleHighlight);
  } else {
    fill(circleColorMEME);
  }
  stroke(circleHighlight);
  ellipse(circleMEMEX, circleMEMEY, circleSize, circleSize);
  
  stroke(0);
  fill(0);
  rect(185,105,420,620,15);

  stroke(150,150,150);
    fill(160,160,160);
    
  
  if(unlocked == false){
  rect(90, 750,620,220,15);
  fill(170,170,170);
  textSize(100);
  text("Service Only",145,880);
  }
  else{
  
  
  
  
  }
  
  
  
  
  
  
 fill(1000,1000,1000);
 stroke(0,0,0);
 textSize(50);
 text("4",81,200);
 text("3",83,350);
 text("2",83,500);
 text("1",83,650);
 image(b4,75,200 + 3);
 image(b3,75,350 + 3 );
 image(b2,75,500 + 3);
 image(b1,75,650 + 3);

 //image(b8,665,200);
 image(b7,661,350);
 image(b6,662,500);
 image(b5,660,650);
 stroke(0,0,0);
 textSize(50);
 text("Current Floor Is F" + CurrentFloor,200,150);

 image(bell,670,310);
 image(close,596,600);
 image(open,663,455);
 image(keyhole,632,125);

 
 //185
 //330
 //485
 //635
 
 
 
stroke(0);
  fill(1000,1000,1000);
  rect(185,Xpos,420,25,15);
  
  
}///END OF DRAW

void update(int x, int y) {
  if ( overCircle1(circle1X, circle1Y, circleSize) ) {
    circleOver1 = true;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = false;


  } else if ( overCircle2(circle2X, circle2Y, circleSize) ) {
    circleOver2 = true;
    circleOver1 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = false;

  } 
  else if ( overCircle3(circle3X, circle3Y, circleSize) ) {
    circleOver3 = true;
    circleOver1 = false;
    circleOver2 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = false;

  } 
  else if ( overCircle4(circle4X, circle4Y, circleSize) ) {
    circleOver4 = true;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = false;

  } 
  
  /////////////
  
  else  if ( overCircleS1(circleS1X, circleS1Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = true;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = false;

  } 
  else if ( overCircleS2(circleS2X, circleS2Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = true;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = false;

  } 
  else if ( overCircleS3(circleS3X, circleS3Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = true;
    circleOverS4 = false;   
    circleOverMEME = false;


  } 
  else if ( overCircleS4(circleS4X, circleS4Y, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = true;
    circleOverMEME = false;

  } 
  else if ( overCircleMEME(circleMEMEX, circleMEMEY, circleSize) ) {
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    
    circleOverS1 = false;
    circleOverS2 = false;
    circleOverS3 = false;
    circleOverS4 = false;
    circleOverMEME = true;
  }
  ///////////
  else {
    circleOver1 = circleOver2 = circleOver3 = circleOver4 = circleOverS1 = circleOverS2 = circleOverS3 = circleOverS4 = circleOverMEME = false;
  }
  
  
  
  
  
  
  
}//end of update







void mousePressed() {
  if (circleOver1) {
    if(circleColor1 == DefaultColor){
    circleColor1 = LitColor;
    f1 = true;
  } else {
    circleColor1 = DefaultColor;
    f1 = false;
  }
  }
  
  if (circleOver2) {
 if(circleColor2 == DefaultColor){
    circleColor2 = LitColor;
    f2 = true;

  } else {
    circleColor2 = DefaultColor;
    f2 = false;
  }
  }
  
 if (circleOver3) {
    if(circleColor3 == DefaultColor){
    circleColor3 = LitColor;
      f3 = true;

  } else {
    circleColor3 = DefaultColor;
    f3 = false;
  }
  }
  
  if (circleOver4) {
 if(circleColor4 == DefaultColor){
    circleColor4 = LitColor;
        f4 = true;

  } else {
    circleColor4 = DefaultColor;
    f4 = false;
  }
  } 
  
  ///////////////
    if (circleOverS1) {
    if(circleColorS1 == ServiceGreen){
    circleColorS1 = LitGreen;
  } else {
    circleColorS1 = ServiceGreen;
  }
  }
  
  if (circleOverS2) {
 if(circleColorS2 == ServiceGreen){
    circleColorS2 = LitGreen;
  } else {
    circleColorS2 = ServiceGreen;
  }
  }
  
 if (circleOverS3) {
    if(circleColorS3 == ServiceYellow){
    circleColorS3 = LitYellow;
  } else {
    circleColorS3 = ServiceYellow;
  }
  }
  
  if (circleOverS4) {
 if(circleColorS4 == ServiceGrey){
    circleColorS4 = LitGrey;
    unlocked = true;
  } else {
    circleColorS4 = ServiceGrey;
    unlocked = false;

  }
  } 
  
  
  
   if (circleOverMEME) {
          file.play();
if (transparency > 0) { transparency -= .1; }
  tint(255, transparency);
  image(Dang, 185, 105);
  //  rect(185,105,420,620,15);

   float r = random(4);
   if(r == 0){
     file.play();

   }
      if(r == 1){}
         if(r == 2){}
             if(r == 3){}

  } 
  
  
  
  
  
  
  
  
  
}











boolean overCircle1(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}


boolean overCircle2(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}


boolean overCircle4(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircleS1(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}


boolean overCircleS2(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircleS3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}


boolean overCircleS4(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircleMEME(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
