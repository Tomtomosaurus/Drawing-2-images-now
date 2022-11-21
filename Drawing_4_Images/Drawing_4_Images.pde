int noWidth, noHeight, quarterWidth, quarterHeight, halfWidth, halfHeight, threeQuarterWidth, threeQuarterHeight, appWidth, appHeight;
int landscapePicWidth1, landscapePicHeight1, landscapePicWidth2, landscapePicHeight2, landscapePicWidth3, landscapePicHeight3;
int portraitPicWidth1, portraitPicHeight1, portraitpicWidth2, portraitPicHeight2, portraitPicWidth3, portraitPicHeight3;
PImage landscapePic1, landscapePic2, landscapePic3, portraitPic1, portraitPic2, portraitPic3;
void setup()
{
  size (500, 500);
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
  landscapePicWidth1 = 626;
  landscapePicHeight1 = 352;
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
  landscapePic1 = loadImage("../Images/Landscape/cosmic-background-with-colorful-red-blue-laser-lights-perfect-digital-wallpaper_181624-32704.jpg");
  landscapePic2 = loadImage("../Images/Landscape/crazy-cool-backgrounds-115537227324vlprio9sk.jpg");
  landscapePic3 = loadImage("../Images/Landscape/pexels-anni-roenkae-2156881.jpg");
  portraitPic1 = loadImage("../Images/Portrait/Cool-Android-Wallpaper-1024x2048.jpg");
  portraitPic2 = loadImage("../Images/Portrait/Cool-Wallpapers.jpg");
  portraitPic3 = loadImage("../Images/Portrait/photo-1549317336-206569e8475c.jpg");
}
void draw()
{
  rect (noWidth, noHeight, quarterWidth, quarterHeight);
  rect (threeQuarterWidth, noHeight, quarterWidth, quarterHeight);
  rect (noWidth, threeQuarterHeight, quarterWidth, quarterHeight);
  rect (threeQuarterWidth, threeQuarterHeight, quarterWidth, quarterHeight);
  rect (quarterWidth, quarterHeight, halfWidth, halfHeight);
}
