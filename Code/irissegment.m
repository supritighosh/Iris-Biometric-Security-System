function varargout = irissegment(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @irissegment_OpeningFcn, ...
                   'gui_OutputFcn',  @irissegment_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


function irissegment_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

a = ones(256,256);
axes(handles.axes1);
imshow(a);
axes(handles.axes2);
imshow(a);
axes(handles.axes4);
imshow(a);
axes(handles.axes5);
imshow(a);

guidata(hObject, handles);



function varargout = irissegment_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


function browse_Callback(hObject, eventdata, handles)

[file,path] = uigetfile('*.bmp;*.jpg;*.png;*.gif;*.tif','Pick an Image File');
if isequal(file,0) | isequal(path,0)
    warndlg('User did not select any Image');
else
    inputimage = imread(file);
    
    axes(handles.axes1);
    imshow(inputimage);
    title('Input Image');
    handles.file = file;
    handles.inputimage = inputimage;
end

guidata(hObject, handles);


function irislocate_Callback(hObject, eventdata, handles)

global DIAGPATH
DIAGPATH = 'diagnostics';
eyeimage_filename = handles.file;
eyeimage = imread(eyeimage_filename); 

savefile = [eyeimage_filename,'-houghpara.mat'];
[stat,mess]=fileattrib(savefile);

if stat == 1
    load(savefile);
    
else
    
 
    [circleiris circlepupil imagewithnoise] = segmentiris(eyeimage);
    save(savefile,'circleiris','circlepupil','imagewithnoise');
    
end


imagewithnoise2 = uint8(imagewithnoise);
imagewithcircles = uint8(eyeimage);

%get pixel coords for circle around iris
[x,y] = circlecoords([circleiris(2),circleiris(1)],circleiris(3),size(eyeimage));
ind2 = sub2ind(size(eyeimage),double(y),double(x)); 

%get pixel coords for circle around pupil
[xp,yp] = circlecoords([circlepupil(2),circlepupil(1)],circlepupil(3)+2,size(eyeimage));
ind1 = sub2ind(size(eyeimage),double(yp),double(xp));


% % Part_dist = round(Dist_rad/4);
Part_dist = 8;

Con_cir1 = circlepupil(3) + Part_dist+2;
[xc1,yc1] = circlecoords([circleiris(2),circleiris(1)],Con_cir1,size(eyeimage));
ind3 = sub2ind(size(eyeimage),double(yc1),double(xc1));


Con_cir2 = Con_cir1 + Part_dist;
[xc2,yc2] = circlecoords([circleiris(2),circleiris(1)],Con_cir2,size(eyeimage));
ind4 = sub2ind(size(eyeimage),double(yc2),double(xc2));


Con_cir3 = Con_cir2 + Part_dist;
[xc3,yc3] = circlecoords([circleiris(2),circleiris(1)],Con_cir3,size(eyeimage));
ind5 = sub2ind(size(eyeimage),double(yc3),double(xc3));

% Write noise regions
imagewithnoise2(ind2) = 255;
imagewithnoise2(ind1) = 255;
imagewithnoise2(ind3) = 255;
imagewithnoise2(ind4) = 255;
imagewithnoise2(ind5) = 255;
% Write circles overlayed
imagewithcircles(ind2) = 255;
imagewithcircles(ind1) = 255;
imagewithcircles(ind3) = 255;

imagewithcircles(ind4) = 255;

imagewithcircles(ind5) = 255;

axes(handles.axes2);
imshow(imagewithcircles,[]);

handles.ind1 = ind1;
handles.ind3 = ind3;
handles.ind4 = ind4;
handles.ind5 = ind5;


warndlg('Localization is Completed');
guidata(hObject, handles);




function featureextract_Callback(hObject, eventdata, handles)


ind1 = handles.ind1;
ind3 = handles.ind3;
ind4 = handles.ind4;
ind5 = handles.ind5;
eyeimage_filename = handles.file;
a = double(imread(eyeimage_filename));


Mean_f1 = mean(a(ind1));
Mean_f2 = mean(a(ind3));
Mean_f3 = mean(a(ind4));
Mean_f4 = mean(a(ind5));


Median_f1 = median(a(ind1));
Median_f2 = median(a(ind3));
Median_f3 = median(a(ind4));
Median_f4 = median(a(ind5));



Var_f1 = var(a(ind1));
Var_f2 = var(a(ind3));
Var_f3 = var(a(ind4));
Var_f4 = var(a(ind5));


Std_f1 = std(a(ind1));
Std_f2 = std(a(ind3));
Std_f3 = std(a(ind4));
Std_f4 = std(a(ind5));


Query_feature = [Mean_f1 Mean_f2 Mean_f3 Mean_f4 Median_f1 Median_f2 Median_f3 Median_f4 Var_f1 Var_f2 Var_f3 Var_f4];
handles.Query_feature = Query_feature;
warndlg('Feature is extracted');

guidata(hObject, handles);











function loaddata_Callback(hObject, eventdata, handles)

data;
warndlg('Database is loaded');




function recognize_Callback(hObject, eventdata, handles)

Query_feature = handles.Query_feature;

DIAGPATH = 'diagnostics';

resultNames = {};
i = 1;     
fid = fopen('database.txt');
while 1
    imagename = fgetl(fid);
    if ~ischar(imagename), break, end  
eyeimage_filename = imagename;
eyeimage = imread(eyeimage_filename); 
axes(handles.axes1);
imshow(eyeimage);
savefile = [eyeimage_filename,'-houghpara.mat'];
[stat,mess]=fileattrib(savefile);

if stat == 1
    load(savefile);
    
else
    
    [circleiris circlepupil imagewithnoise] = segmentiris(eyeimage);
    save(savefile,'circleiris','circlepupil','imagewithnoise');
    
end

imagewithnoise2 = uint8(imagewithnoise);
imagewithcircles = uint8(eyeimage);


[x,y] = circlecoords([circleiris(2),circleiris(1)],circleiris(3),size(eyeimage));
ind2 = sub2ind(size(eyeimage),double(y),double(x)); 

[xp,yp] = circlecoords([circlepupil(2),circlepupil(1)],circlepupil(3)+2,size(eyeimage));
ind1 = sub2ind(size(eyeimage),double(yp),double(xp));


Part_dist = 8;

Con_cir1 = circlepupil(3) + Part_dist+2;
[xc1,yc1] = circlecoords([circleiris(2),circleiris(1)],Con_cir1,size(eyeimage));
ind3 = sub2ind(size(eyeimage),double(yc1),double(xc1));


Con_cir2 = Con_cir1 + Part_dist;
[xc2,yc2] = circlecoords([circleiris(2),circleiris(1)],Con_cir2,size(eyeimage));
ind4 = sub2ind(size(eyeimage),double(yc2),double(xc2));


Con_cir3 = Con_cir2 + Part_dist;
[xc3,yc3] = circlecoords([circleiris(2),circleiris(1)],Con_cir3,size(eyeimage));
ind5 = sub2ind(size(eyeimage),double(yc3),double(xc3));

imagewithnoise2(ind2) = 255;
imagewithnoise2(ind1) = 255;
imagewithnoise2(ind3) = 255;
imagewithnoise2(ind4) = 255;
imagewithnoise2(ind5) = 255;

imagewithcircles(ind2) = 255;
imagewithcircles(ind1) = 255;
imagewithcircles(ind3) = 255;

imagewithcircles(ind4) = 255;

imagewithcircles(ind5) = 255;

axes(handles.axes2);
imshow(imagewithcircles,[]);
a = double(eyeimage);


Mean_f1 = mean(a(ind1));
Mean_f2 = mean(a(ind3));
Mean_f3 = mean(a(ind4));
Mean_f4 = mean(a(ind5));


Median_f1 = median(a(ind1));
Median_f2 = median(a(ind3));
Median_f3 = median(a(ind4));
Median_f4 = median(a(ind5));


Var_f1 = var(a(ind1));
Var_f2 = var(a(ind3));
Var_f3 = var(a(ind4));
Var_f4 = var(a(ind5));


Std_f1 = std(a(ind1));
Std_f2 = std(a(ind3));
Std_f3 = std(a(ind4));
Std_f4 = std(a(ind5));
Data_feature = [Mean_f1 Mean_f2 Mean_f3 Mean_f4 Median_f1 Median_f2 Median_f3 Median_f4 Var_f1 Var_f2 Var_f3 Var_f4];
result_feature = sum((Query_feature-Data_feature).^2).^0.5;
resultValues(i) = {result_feature};
i = i+1;
end
handles.resultValues = resultValues;
warndlg('Iris is recognized. See how much it is authenticated.');

guidata(hObject, handles);



function match_Callback(hObject, eventdata, handles)

resultValues = handles.resultValues;

[resultValues_final ind] = sort(cell2mat(resultValues));
%hd=gethammingdistance(a,b,c,d,20);

hd = resultValues_final(1);
        
set(handles.ans,'String',num2str(hd));
if (hd>0.32) 
  set(handles.ans, 'String', ['HAMMING DISTANCE=',get(handles.ans,'String'), '  It is not same person! ']);
else
  set(handles.ans, 'String', ['HAMMING DISTANCE=',get(handles.ans,'String'), ' It is same person! ']);  
end

function clearbrowse_Callback(hObject, eventdata, handles)

a = ones(256,256);
axes(handles.axes1);
imshow(a);
axes(handles.axes2);
imshow(a);



function Exit_Callback(hObject, eventdata, handles)

close irissegment;
