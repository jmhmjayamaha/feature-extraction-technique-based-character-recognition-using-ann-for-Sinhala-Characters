function [upper lower] = line_separator(imageIn)
    imageIn = crop_image(imageIn);
    number_of_rows = size(imageIn, 1);
    
    for x = 1 : number_of_rows
        if sum(imageIn(x, :)) == 0
            firstLine = imageIn(1:x - 1, :);
            secondLine = imageIn(x : end, :);
            
            upper = crop_image(firstLine);
            lower = crop_image(secondLine);
            
            break;
        else 
            upper = imageIn;
            lower = [];
        end;        
    end;
    
    