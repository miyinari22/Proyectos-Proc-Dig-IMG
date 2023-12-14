I = imread('IMG_20230204_132135888.jpg');
I=rgb2gray(I);
imshow(I);
%get the size of the image
[rows,cols] = size(I);

%create a gaussian mask
M = fspecial('gaussian',[rows cols/3], cols/3); %Creates a gaussian 920x720 matrix

imshow(M, []); %Sin el mapeo no podemos ver la mascara

tic;
I = double(I); %Convertimos I a dobles, convertir la mascara a uint no se ve bien
C = I.*M;
C = mat2gray(C);

%show the result
imshow(C);

toc;
