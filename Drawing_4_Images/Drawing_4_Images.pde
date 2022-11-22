int noWidth, noHeight, quarterWidth, quarterHeight, halfWidth, halfHeight, threeQuarterWidth, threeQuarterHeight, appWidth, appHeight;
int landscapePicWidth1, landscapePicHeight1, landscapePicWidth2, landscapePicHeight2, landscapePicWidth3, landscapePicHeight3;
int portraitPicWidth1, portraitPicHeight1, portraitpicWidth2, portraitPicHeight2, portraitPicWidth3, portraitPicHeight3;
float smallerDimension1, largerDimension1;
float smallerDimension2, largerDimension2;
float smallerDimension3, largerDimension3;
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
    largerDimension1 = landscapePicWidth1;
    smallerDimension1 = landscapePicHeight1;
  }
}
void draw()
{
  image (landscapePic1, noWidth, noHeight, appWidth, appHeight);
  image (landscapePic2, noWidth, noHeight, quarterWidth, quarterHeight);
  image (landscapePic3, threeQuarterWidth, noHeight, quarterWidth, quarterHeight);
  image (portraitPic1, noWidth, threeQuarterHeight, quarterWidth, quarterHeight);
  image (portraitPic2, threeQuarterWidth, threeQuarterHeight, quarterWidth, quarterHeight);
  image (portraitPic3, quarterWidth, quarterHeight, halfWidth, halfHeight);
}
