% clear all, close all, clc

%%read the image from the location
image = imread('test_images\TEST_4.jpg');

%% show the input image
figure(1)
imshow(image);
title('Input Image');

%% convert the rgb image to gray scale image 
if size(image, 3) == 3
    image = rgb2gray(image);
end;

%% show the gray scale image 
% figure(2)
% imshow(image);
% title('Gray scale image');

%% conver to binary image
graythresh = graythresh(image);
image = ~im2bw(image, graythresh);

%% show the binary image 
% figure(3)
% imshow(image);
% title('Binary image');

%% remove the noise of the image ( remove less than 15px from the binary image)
image = bwareaopen(image,30);

%% show the noise removed image 
% figure(4)
% imshow(image);
% title('noise removed image');

%% edge detection of the image
imageEdge = edge(image);

%% show the detected edge in the image 
% figure(5)
% imshow(~imageEdge);
% title('Detected edges');

%% dilate the image 
se = strel('square', 3);
dilatedImage = imdilate(imageEdge, se);

%% show tbe dilated image 
% figure(6)
% imshow(~dilatedImage);
% title('dilated image');

%% fill the hole in the image 
imageFill = imfill(dilatedImage, 'holes');

%% show the filled image
% figure(7)
% imshow(~imageFill);
% title('Filled image');

%% using bitwise and operator and the given image can take the dilated image
imageFill = imageFill & image;
% figure(8)
% imshow(~imageFill);
% title('last modification ');
%%
lower = imageFill;

% fid = fopen('E:\My_Workspace\MATLAB\final_year_project_ocr_using_ann\output.txt','wt');

 while 1
    [upper lower] = line_separator(lower);
    upper1 = upper;
    [L Ne] = bwlabel(upper1);   
%     figure(9)
%     imshow(firstLine);
%     pause(0.5);
%     figure(10)
%     imshow(secondLine);
    for n=1:Ne
        [row,column] = find(L==n);
        n1=upper1(min(row):max(row),min(column):max(column));
       %imshow(~n1);
        BW2 = bwmorph(n1,'thin',Inf);
        imrotate(BW2,0);
%         imshow(~BW2);
        z=imresize(BW2,[50 50]);
        figure(9);
        imshow(~z);
         z=feature_extract(z);
         
         load ('featureout.mat');
        featureout=z;
         %disp(z);
         save ('featureout.mat','featureout');
         test

        pause(0.5);
    end
    if isempty(lower)
         break;
     end;
end;
 clear all
 winopen('output.txt');