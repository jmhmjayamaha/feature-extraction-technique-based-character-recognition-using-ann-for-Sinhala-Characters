# feature-extraction-technique-based-character-recognition-using-ann-for-Sinhala-Characters
## Used technologies
- MatLab
- Image processing toolbox
- Neural Network toolbox
- pattern recognition

## How to run this application

- run the create_target_metrics.m, this will create the y matrics. one character have 25 different sampels.so 25 * 34 = 850 samples in the training_set folder.
 you can change this according to your program.
- run the myFeatureScript.m, this will extract the feature and store in the x matrics. 
- then you need to train the neural network using train.m.
- give the image path in image = imread('image path'); and run the extract_word_from_image.m

output will be printed to output.txt.
 
