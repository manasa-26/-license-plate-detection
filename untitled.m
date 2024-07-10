img=imread("low_contrast.jpg");
subplot(2,2,1);
imshow(img);
title("Low contrast image");
subplot(2,2,2);
imhist(img);
title("Histogram of image");
hist_equi_img=histeq(img);
subplot(2,2,3);
imshow(hist_equi_img);
title("Histogram equalized image");
subplot(2,2,4);
imhist(hist_equi_img);
title("Histogram of enhanced image");

x = imbinarize(im2gray(img));
figure, imshow(x);
title("Thresholding");