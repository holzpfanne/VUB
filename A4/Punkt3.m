close all
clear

O = imread('palast.jpg');
O = rgb2gray(O);

P = O;

P(P<=30) = 0;
P(P>30 & P<=60) = 20;
P(P>60 & P <= 128) = 100;
P(P>128 & P <= 200) = 180;
P(P>200) = 255;


figure, subplot(1,2,1), imshow(O);
subplot(1,2,2), imshow(P);