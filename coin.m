img = im2gray(imread("coins.png"));
figure,imshow(img);
title("original image")
b1 = edge(img,"sobel");
b2 = edge(img,"canny");
figure,imshowpair(b1,b2,"montage");
title("sobel and canny image")