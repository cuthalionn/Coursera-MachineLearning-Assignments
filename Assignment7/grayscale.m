% read in tiff image and convert it to double format
my_image = im2double(imread('bird_small.png'));
my_image = my_image(:,:,1);
% perform thresholding by logical indexing
image_thresholded = my_image;
image_thresholded(my_image>3) = 111;
image_thresholded(my_image<0.5) = 188;
% display result
figure()
subplot(1,2,1)
imshow(my_image,[])
title('original image')
subplot(1,2,2)
imshow(image_thresholded,[])
title('thresholded image')