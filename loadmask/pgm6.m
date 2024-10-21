originalImage = imread('moni.png');  
originalImage = rgb2gray(originalImage);


figure;
imshow(originalImage);
title('Original Image');

dctImage = dct2(originalImage);

threshold = 20; 
compressedImage = dctImage;
compressedImage(abs(compressedImage) < threshold) = 0; 

reconstructedImage = idct2(compressedImage);

reconstructedImage = uint8(reconstructedImage);

figure;
imshow(reconstructedImage);
title('Compressed and Reconstructed Image');
