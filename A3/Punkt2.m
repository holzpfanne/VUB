clear
close all

L = imread('Lena.png');
M = imread('Muster_Maske.png');

S = size(L);

RM = imresize(M(:,:,1),[S(1) S(2)]);

ML = L;

LR = L(:,:,1);
LG = L(:,:,2);
LB = L(:,:,3);

LR(RM < 250) = 0;
LG(RM < 250) = 0;
LB(RM < 250) = 0;

ML(:,:,1) = LR;
ML(:,:,2) = LG;
ML(:,:,3) = LB;

figure, subplot(1,3,1), imshow(L);
subplot(1,3,2), imshow(M);
subplot(1,3,3), imshow(ML);