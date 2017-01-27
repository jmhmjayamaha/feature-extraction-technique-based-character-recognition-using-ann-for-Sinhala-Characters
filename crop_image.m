function imageOut = crop_image(imageIn)
    [row column] = find(imageIn);
    imageOut = imageIn(min(row):max(row), min(column):max(column));