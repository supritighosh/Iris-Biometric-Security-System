a=imread('ravi3.bmp');
imhist(a);
c=histeq(a);
imhist(a,64);
