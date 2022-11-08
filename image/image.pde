//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
boolean widthLarger = false, heightLarger= false;
PImage pic;
boolean nightmode=false;
//
size (1500, 1300);// Landskape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//Pumpkin-Pie.jpg
int picWidth = 1200;
int picHeight = 1200;
//Image Orientation: Landscape, Square, Portrait
if (picWidth >= picHeight) {//True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {// False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//  
/*Aspect Ratio Calculations
 if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
 if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
 if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
 if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
 *///Population
//Better Image Stretch Algorithm
//We know the width is the larger dimension
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
if ( appWidth >= picWidth) {
     picWidthAdjusted = appWidth;
     if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
     if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
   //
       if (appHeight >= picHeight) {
         //Calculated Dimension  b/cc smaller than width
         if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
         if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
         picHeightAdjusted =  picWidthAdjusted * imageHeightRatio;
      } else {
        
    //Image smaller that CANVAS, needs separate algorithm
  }
} else {
//Means that appWidth is smaller than picWidth

}
pic = loadImage("../Images Used/Pumpkin-Pie.jpg");
backgroundImageX = appWidth *0;
backgroundImageY = appHeight *0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
println( appWidth, picWidth, picWidthAdjusted);
println( appHeight, picHeight, picHeightAdjusted);
//Rectangular and image drawing to CANVAS
rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
if (nightmode == false) tint(255, 64);//Gray scale, Day use: use 1/2 tint value for white
if (nightmode == true) tint(96, 92, 64);//RGB: Night Mode
image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
