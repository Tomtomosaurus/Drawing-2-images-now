int noWidth, noHeight, quarterWidth, quarterHeight, halfWidth, halfHeight, threeQuarterWidth, threeQuarterHeight, appWidth, appHeight;
int landscapePicWidth1, landscapePicHeight1, landscapePicWidth2, landscapePicHeight2, landscapePicWidth3, landscapePicHeight3;
int portraitPicWidth1, portraitPicHeight1, portraitpicWidth2, portraitPicHeight2, portraitPicWidth3, portraitPicHeight3;
float landscapeSmallerDimension1, landscapeLargerDimension1;
float landscapeSmallerDimension2, landscapeLargerDimension2;
float landscapeSmallerDimension3, landscapeLargerDimension3;
float portraitSmallerDimension1, portraitDimension1;
float portraitSmallerDimension2, portraitDimension2;
float portraitSmallerDimension3, portraitDimension3;
float landscapePicWidthAdjusted1, landscapePicHeightRatio1, landscapePicWidthRatio1, landscapePicHeightAdjusted1;
PImage landscapePic1, landscapePic2, landscapePic3, portraitPic1, portraitPic2, portraitPic3;
void setup()
{
  size (900, 900);
  noWidth = 0;
  noHeight = 0;
  quarterWidth = width/4;
  quarterHeight = height/4;
  halfWidth = width/2;
  halfHeight = height/2;
  threeQuarterWidth = width*3/4;
  threeQuarterHeight = height *3/4;
  appWidth = width;
  appHeight = height;
  //
  landscapePicWidth1 = 640;
  landscapePicHeight1 = 480;
  landscapePicWidth2 = 850;
  landscapePicHeight2 = 532;
  landscapePicWidth3 = 3997;
  landscapePicHeight3 = 3001;
  //
  portraitPicWidth1 = 1024;
  portraitPicHeight1 = 2048;
  portraitpicWidth2 = 1080;
  portraitPicHeight2 = 2280;
  portraitPicWidth3 = 1000;
  portraitPicHeight3 = 1500;
  //
  landscapePic1 = loadImage("../Images/Landscape/aaaa.png");
  landscapePic2 = loadImage("../Images/Landscape/crazy-cool-backgrounds-115537227324vlprio9sk.jpg");
  landscapePic3 = loadImage("../Images/Landscape/pexels-anni-roenkae-2156881.jpg");
  portraitPic1 = loadImage("../Images/Portrait/Cool-Android-Wallpaper-1024x2048.jpg");
  portraitPic2 = loadImage("../Images/Portrait/Cool-Wallpapers.jpg");
  portraitPic3 = loadImage("../Images/Portrait/photo-1549317336-206569e8475c.jpg");
  //
  if ( landscapePicWidth1 >= landscapePicHeight1 ) { //True if Landscape or Square
    landscapeLargerDimension1 = landscapePicWidth1;
    landscapeSmallerDimension1 = landscapePicHeight1;
    //
    landscapePicWidthAdjusted1 = appWidth;
    landscapePicHeightRatio1 = landscapeSmallerDimension1 / landscapeLargerDimension1;
    landscapePicHeightAdjusted1 = landscapePicWidthAdjusted1 * landscapePicHeightRatio1;
  } else { //False if Portrait
    landscapeLargerDimension1 = landscapePicHeight1;
    landscapeSmallerDimension1 = landscapePicWidth1;
    //
    //Students to create
    landscapePicHeightAdjusted1 = appHeight; //stretch or reduce
    landscapePicWidthRatio1 = landscapeSmallerDimension1 / landscapeLargerDimension1;
    landscapePicWidthAdjusted1 = landscapePicHeightAdjusted1 * landscapePicWidthRatio1;
    if ( landscapePicWidthAdjusted1 > landscapePicWidth1 ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
}
  void draw()
  {
    image (landscapePic1, noWidth, noHeight, landscapePicWidthAdjusted1, landscapePicHeightAdjusted1);
    image (landscapePic2, noWidth, noHeight, quarterWidth, quarterHeight);
    image (landscapePic3, threeQuarterWidth, noHeight, quarterWidth, quarterHeight);
    image (portraitPic1, noWidth, threeQuarterHeight, quarterWidth, quarterHeight);
    image (portraitPic2, threeQuarterWidth, threeQuarterHeight, quarterWidth, quarterHeight);
    image (portraitPic3, quarterWidth, quarterHeight, halfWidth, halfHeight);
  }
