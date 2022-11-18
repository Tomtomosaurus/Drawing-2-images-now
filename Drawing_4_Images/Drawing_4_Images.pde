int noWidth, noHeight, quarterWidth, quarterHeight, halfWidth, halfHeight, threeQuarterWidth, threeQuarterHeight, appWidth, appHeight;

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

size (500, 500);
rect (noWidth, noHeight, quarterWidth, quarterHeight);
rect (threeQuarterWidth, noHeight, quarterWidth, quarterHeight);
rect (noWidth, threeQuarterHeight, quarterWidth, quarterHeight);
rect (threeQuarterWidth, threeQuarterHeight, quarterWidth, quarterHeight);
rect (quarterWidth, quarterHeight, halfWidth, halfHeight);
