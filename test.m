close all;
clear

A=imread('Lenna.png');
Y=rgb2gray(A);
n=size(Y);
% ENCODER
U=uint8(blkproc(Y,[64 64],'dct2'));
%%n=size(U);

s=rng;

K=uint8(256.*rand(n(1),n(2)));   %Schlüsselbild

figure, imshow(K);

E=bitxor(K,U);

imwrite(K,'key.png');            %Schlüsselbild
imwrite(E,'Lenna_crypt.png');    %Verschlüsseltes Bild


%%%%%%%%%%Decoder
K=imread('key.png');
E=imread('Lenna_crypt.png');

D=bitxor(K,E);

F=blkproc(double(D),[64 64],'idct2');

figure,imshow(Y);
figure,imshow(E);
figure,imshow(uint8(F));



