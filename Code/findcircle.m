function [row, col, r] = findcircle(image,lradius,uradius,scaling, sigma, hithres, lowthres, vert, horz)

lradsc = round(lradius*scaling);
uradsc = round(uradius*scaling);
rd = round(uradius*scaling - lradius*scaling);

% generatesegmentiris the edge image
[I2 or] = canny(image, sigma, scaling, vert, horz);%imwrite(I2,'E:\E_Drive\iris\canny.bmp');
figure;
imshow(I2,[]);
title('Canny Edge Result');
I3 = adjgamma(I2, 1.9);%imwrite(I3,'E:\E_Drive\iris\adjgamma.bmp');
figure;
imshow(I3,[]);
title('Gamma Adjusted Result');
I4 = nonmaxsup(I3, or, 1.5); %imwrite(I4,'E:\E_Drive\iris\nonmax.bmp');
figure;
imshow(I4,[]);
title('Non-Maxima Suppression Result');
edgeimage = hysthresh(I4, hithres, lowthres);
figure;
imshow(edgeimage,[]);
title('Edge Image');
% imwrite(edgeimage,'E:\E_Drive\iris\hysthre.bmp');
% perform the circular Hough transform
h = houghcircle(edgeimage, lradsc, uradsc);
% disp(h);
% imwrite(h,'E:\E_Drive\iris\hough.bmp');
maxtotal = 0;

% find the maximum in the Hough space, and hence
% the parameters of the circle
for i=1:rd
    
    layer = h(:,:,i);
    [maxlayer] = max(max(layer));
    
    
    if maxlayer > maxtotal
        
        maxtotal = maxlayer;
        maxacc = i;
        
        r = int32((lradsc+i) / scaling);
        
        [row,col] = ( find(layer == maxlayer) );
        
        
        row = int32(row(1) / scaling); % returns only first max value
        col = int32(col(1) / scaling);    
        
    end   
    
end
figure;
imshow(h(:,:,maxacc),[]);
title('Hough Circle Result');