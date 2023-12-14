clear all;
close all;
clc; clf;

I=imread('IMG_20230204_133905537.jpg');
G=rgb2gray(I);
M1=1/9*ones(3,3);
M2=[-1 0 1];
M3=[-1;0;1];
%M4=[]; %kernel de convolucion para obtener la derivada en 45 grados
%M5=[]; %kernel de convolucion para obtener la derivada en 45 grados
G=rgb2gray(I); %Imagen en tonos de gris
C1=convolucion (G,M1); %Imagen suavizada con filtro promedio
Dx=convolucion (C1,M2); %Derivada en x de la imagen
Dy=convolucion (C1,M3); %Derivada en y de la imagen
Magnitud_Gradiente = max(Dx,Dy);

figure(1);
subplot(221); imagesc(G);
subplot(221); imagesc(Magnitud_Gradiente);
subplot(221); imagesc(Dx);
subplot(221); imagesc(Dy);
figure(2);
tic
%C1= convolucion (G,M1);
toc
tic
C1=conv2(G,M1);
E=im_estirar_histograma(G);
subplot(221); imagesc(C1);
subplot(222); imagesc(E);
subplot(223); plot(hist(C1));
subplot(224); plot(hist(E));
toc
