close all
clear all

raw = imread('Lenna.png');

raw_size = size(raw);

%Rot und Blau
R1 = uint8(zeros(raw_size(1), raw_size(2), raw_size(3)));
R1(:,:,1) = raw(:,:,2);
R1(:,:,2) = raw(:,:,1);
R1(:,:,3) = raw(:,:,3);

%Rot und grün
R2 = uint8(zeros(raw_size(1), raw_size(2), raw_size(3)));
R2(:,:,1) = raw(:,:,3);
R2(:,:,2) = raw(:,:,2);
R2(:,:,3) = raw(:,:,1);

%Blau und Rot
B1 = uint8(zeros(raw_size(1), raw_size(2), raw_size(3)));
B1(:,:,1) = raw(:,:,2);
B1(:,:,2) = raw(:,:,1);
B1(:,:,3) = raw(:,:,3);

%Blau und Grün
B2 = uint8(zeros(raw_size(1), raw_size(2), raw_size(3)));
B2(:,:,1) = raw(:,:,1);
B2(:,:,2) = raw(:,:,3);
B2(:,:,3) = raw(:,:,2);

%Grün und Rot
G1 = uint8(zeros(raw_size(1), raw_size(2), raw_size(3)));
G1(:,:,1) = raw(:,:,3);
G1(:,:,2) = raw(:,:,2);
G1(:,:,3) = raw(:,:,1);

%Grün und Blau
G2 = uint8(zeros(raw_size(1), raw_size(2), raw_size(3)));
G2(:,:,1) = raw(:,:,1);
G2(:,:,2) = raw(:,:,3);
G2(:,:,3) = raw(:,:,2);

figure, subplot(2,3,1), imshow(R1);
subplot(2,3,2), imshow(R2);
subplot(2,3,3), imshow(B1);
subplot(2,3,4), imshow(B2);
subplot(2,3,5), imshow(G1);
subplot(2,3,6), imshow(G2);