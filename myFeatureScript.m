% this will create the input to the neural network.  
% read the all the image from the training_set folder and convert it to
% gray scale image . this use feature_extract.m matlab file to extract the
% feature of the image . and save on the variable x
%
%%
% letters = ['a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' 'num1' 'num2' 'num3' 'num4' 'num5' 'num6' 'num7' 'num8'];
 letters = ['a   '; 'b   '; 'c   '; 'd   '; 'e   '; 'f   '; 'g   '; 'h   '; 'i   '; 'j   '; 'k   '; 'l   '; 'm   '; 'n   '; 'o   ' ;'p   '; 'q   '; 'r   '; 's   '; 't   ' ;'u   ' ;'v   ' ;'w   '; 'x   ' ;'y   '; 'z   '; 'af  ' ;'ag  '; 'num3'; 'num4'; 'num5' ;'ae  ' ;'ac  '; 'aa  ']; 
increment = 1;
 for y = 1 :1: 34
    for k = 1 : 1 : 25
        test = strcat(letters(y,:) , num2str(k));
        imageName = imread(strcat('training_set/',test,'.bmp')); imageName = rgb2gray(imageName);
        x(:, increment) = (feature_extract(~im2bw(imageName)));
        increment = increment + 1;
    end;
 end;
 x = x';