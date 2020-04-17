function h = houghcircle(edgeim, rmin, rmax)

[rows,cols] = size(edgeim);
nradii = rmax-rmin+1;
h = zeros(rows,cols,nradii);

[y,x] = find(edgeim~=0);

%for each edge point, draw circles of different radii
for index=1:size(y)
    
    cx = x(index);
    cy = y(index);
    
    for n=1:nradii
        
        h(:,:,n) = addcircle(h(:,:,n),[cx,cy],n+rmin);
        
    end
    
end
