close all;
clear all;
clc;

MRO_I=imread("img0-069.tif");

% Se establece un parámetro para la umbralización adaptativa
MRO_numA=0.15;

% Aplica una ecualización de histograma adaptativo a la imagen
MRO_AHE=adapthisteq(MRO_I,'Distribution','rayleigh');

% Aplica umbralización adaptativa para separar los objetos brillantes del fondo
MRO_T=adaptthresh(MRO_AHE, MRO_numA, 'ForegroundPolarity', 'bright', 'Statistic', 'median');
MRO_BW=imbinarize(MRO_AHE,MRO_T);

%Se define eu elemento estructurante para la operación bottom-hat
MRO_se=strel('disk',4);

%Filtrado bottom-hat para resaltar las regiones más oscuras de la imagen
MRO_J = imsubtract(imadd(MRO_I,imtophat(MRO_I,MRO_se)),imbothat(MRO_I,MRO_se));

%Se utiliza segmentacion de imagen junto a operaciones morfologicas
% para eliminar ruido y objetos no deseados https://la.mathworks.com/help/images/detecting-a-cell-using-image-segmentation.html
MRO_se90 = strel('line',3,90);
MRO_se0 = strel('line',3,0);
MRO_BWsdil = imdilate(MRO_J,[MRO_se90 MRO_se0]);
MRO_BWdfill = imfill(MRO_BWsdil,'holes');
MRO_BWnobord = imclearborder(MRO_BWdfill,4);

MRO_seD = strel('diamond',1);
MRO_BWfinal = imerode(MRO_BWnobord,MRO_seD);
MRO_BWfinal = imerode(MRO_BWfinal,MRO_seD);
MRO_sel=strel('disk', 1);
MRO_IC=imclose (MRO_BWfinal, MRO_sel);
%Interpolacion
MRO_interp = interp2(double(MRO_IC), 'linear');
% Aumenta el contraste local de la imagen para resaltar los objetos
% https://la.mathworks.com/help/images/ref/imlocalbrighten.html

MRO_B = imlocalbrighten(MRO_interp);

% Aplica detección de bordes para identificar los contornos de los objetos
MRO_filtro = edge(MRO_B,'sobel');

% Ajuste de parámetros de segmentación para detectar aproximadamente 9 o 12 células equidistantes
[MRO_centros, MRO_radios] = imfindcircles(MRO_filtro, [10 25], "ObjectPolarity", "bright", "Sensitivity", 0.92, "EdgeThreshold", 0.02);
fprintf('Se encontraron %d objetos\n', numel(MRO_radios));

% Mostrar la imagen con los objetos encontrados
imshow(MRO_B);

hold on;

% Dibujar círculos en los centros de los objetos
h=viscircles(MRO_centros, MRO_radios,'EdgeColor','b');
delete(h)  % Delete previously drawn circles
% Agregar números sobre los objetos

for i=1:numel(MRO_radios)
text(MRO_centros(i,1),MRO_centros(i,2),num2str(i),'Color','r','HorizontalAlignment','center','VerticalAlignment','middle');
end

hold off;