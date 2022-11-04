//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
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
tint(128,128, 50);//Nightmode
image(pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
