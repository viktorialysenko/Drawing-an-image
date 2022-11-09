//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
PImage pic;
boolean nightmode=true;
int tintDayMode= 255, tintDayModeOpacity= 64;
int tintRed= 92, tintGreen= 92, tintBlue= 40, tintNightModeOpacity= 40;
//
void setup() {
size (1200, 1300);// Landskape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//Image Dimensions for the Aspect Ratio
//
//Aspect Ratio of Background Image
//Pumpkin-Pie.jpg
int picWidth = 1200;
int picHeight = 1200;
//Image Orientation: Landscape, Square, Portrait
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
boolean widthLarger = false, heightLarger= false;
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
//Teaching example: We know the width is the larger dimension
//Better Image Stretch Algorithm
if ( appWidth >= picWidth) {
  picWidthAdjusted = appWidth;// Stretching larger dimension
  if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
  if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
  //
  if (appHeight >= picHeight) {
    //Calculated Dimension  b/cc smaller than width
    if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
    // We don't need this one//if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
    picHeightAdjusted =  picWidthAdjusted * imageHeightRatio;
    if (appHeight < picHeightAdjusted) {
      println ("STOP: image is too big for the CANVAS");
      exit();//stop further use of the APP;
    }
  } else {
    //Image smaller that CANVAS, needs separate algorithm
       println ("CANVAS is smaller than Image");
  }
} else {
  //Means that appWidth is smaller than picWidth
   println ("CANVAS is smaller than Image");
}
//Population
pic = loadImage("../Images Used/Pumpkin-Pie.jpg");
backgroundImageX = appWidth *0;
backgroundImageY = appHeight *0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Verify Variable Values after Algotithm
println( "App Width", appWidth, "and App Height: ", picWidthAdjusted);
println( "Image dimnesions are: ", picWidth, picHeight);
println("Larger image dimension is:", largerDimension);
println( "Adjusted Image Dimensions are (stretch is a goal):", picWidthAdjusted, picHeightAdjusted );
//
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//Background Image must be single executed code
if (nightmode == false) tint(tintDayMode, tintDayModeOpacity);//Gray scale, Day use: use 1/2 tint value for white
if (nightmode == true) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);//RGB: Night Mode
image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
}//End setup
//
void draw () {
}//End draw
//
void keyPressed () {
}//End keyPressed
//
void mousePressed () {
  //MousePressed will controll background  image
  if ( mouseButton == LEFT ){
   nightmode = true; 
   rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
   tint(64, 64, 40, 85);//RGB: Night Mode
   image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
 }
   if ( mouseButton == RIGHT ){
   nightmode = false; 
   rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
   tint(255, 64);// Gray Scale: use 1/2 tint value 
   image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
}//End mousePressed


//Rectangular and image drawing to CANVAS
}
