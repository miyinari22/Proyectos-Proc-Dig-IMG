clear all;
clc; clf;
A=imread('IMG_20230204_133905537.jpg');
A=rgb2gray(A);
E=im_estirar_histograma(A);
C=imread('IMG_20230204_132135888.jpg')
C=rgb2gray(C);
D=im_estirar_histograma(C);
subplot(221); imshow(A);
subplot(222); imshow(D);
subplot(223); plot(hist(A,251));
subplot(224); plot(hist(D,251));
