img = imread('1.bmp'); 
% Set the parameters 
yPosPupil = 102; 
xPosPupil = 95; 
rPupil = 46.08; 
yPosIris = 97; 
xPosIris = 97; 
rIris = 96.95;
image = rubberSheetNormalisation( img, yPosPupil, xPosPupil, rPupil , yPosIris , xPosIris , rIris , 360 , 360 , 'Debugmode',1);
imshow(image/max(image(:)));