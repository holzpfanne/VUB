close all
clear

O = imread('Zone_Plate_1920_1080.png');
OG = rgb2gray(O);

S2 = OG(1:2:end, 1:2:end);
S4 = S2(1:2:end, 1:2:end);
S8 = S4(1:2:end, 1:2:end);

figure, subplot(1,4,1), imshow(OG);
subplot(1,4,2), imshow(S2);
subplot(1,4,3), imshow(S4);
subplot(1,4,4), imshow(S8);

% Es entstehen Frquenzen die Vorher nicht da waren