a=imread('ravi3.bmp');
imhist(a);
c=histeq(a);
imhist(c,64);