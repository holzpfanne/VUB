close all;

O = imread('Logo_rechteck.png');

C = O;

n = size(O);

OR = O(:,:,1);
OG = O(:,:,2);
OB = O(:,:,3);

CR = zeros(n(1), n(2));
CG = zeros(n(1), n(2));
CB = zeros(n(1), n(2));

CR(OR == 255 & OG == 255 | OG == 255 & OB == 255) = 255; 
CG(OG > 250 & OR > 250) = 255;
CB(OR == 255) = 255;

C(:,:,1) = CR;
C(:,:,2) = CG;
C(:,:,3) = CB;

figure, subplot(2,1,1), imshow(O);
subplot(2,1,2), imshow(C);