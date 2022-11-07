//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
boolean nightmode=false;
//
size (800,800);// Landskape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//Population
pic = loadImage("../Images Used/Pumpkin-Pie.jpg");
backgroundImageX = appWidth *0;
backgroundImageY = appHeight *0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;

//Rectangular and image drawing to CANVAS
rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
if (nightmode == false) tint(255, 64);//Gray scale, Day use: use 1/2 tint value for white
if (nightmode == true) tint(96, 92, 64);//RGB: Night Mode
image(pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
