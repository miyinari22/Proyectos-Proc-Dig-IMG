close all;
I=imread ('R.jpg');
J=imread ('R2.jpg');

figure;
subplot (231); imshow (I);
subplot (232); imshow (J);
subplot (234); imshow (J(:,:,1));
subplot (234); imshow (J(:,:,2));
subplot (234); imshow (J(:,:,3));
title ('Dos imagenes de prueba');

