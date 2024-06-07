% Load the original aerial image
original_image = imread('aerialview-washedout.tif'); % Replace 'aerial_image.jpg' with the filename of your aerial image
original_image = double(original_image); % Convert to double for calculations

% Display the original image
subplot(1,4,1);
imshow(uint8(original_image));
title('Original Aerial Image');

% Apply the power-law transformation for gamma = 3.0
transformed_image1 = uint8(255 * (original_image / 255).^3.0);
subplot(1,4,2);
imshow(transformed_image1,[]);
title('Gamma = 3.0');

% Apply the power-law transformation for gamma = 4.0
transformed_image2 = uint8(255 * (original_image / 255).^4.0);
subplot(1,4,3);
imshow(transformed_image2,[]);
title('Gamma = 4.0');

% Apply the power-law transformation for gamma = 5.0
transformed_image3 = uint8(255 * (original_image / 255).^5.0);
subplot(1,4,4);
imshow(transformed_image3,[]);
title('Gamma = 5.0');

imwrite(transformed_image1,'transformed_image1.png')
imwrite(transformed_image2,'transformed_image2.png')
imwrite(transformed_image3,'transformed_image3.png')

