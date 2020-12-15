close all;

O = imread('Lenna.png');

OR = O(:,:,1);
OG = O(:,:,2);
OB = O(:,:,3);

SR = blkproc(OR,[16,16],'dct2');
SG = blkproc(OG,[16,16],'dct2');
SB = blkproc(OB,[16,16],'dct2');

MR = zeros(16,16);
MR(1,1)= 1;

MG = zeros(16,16);
MG(1,1)= 1;
MG(1,2)= 1;
MG(2,1)= 1;

SB(abs(SB) <= 100) = 0;

AR = blkproc(SR,[16 16],'x.*P1',MR);
AG = blkproc(SG,[16 16],'x.*P1',MG);

BR = blkproc(AR,[16,16],'idct2');
BG = blkproc(AG,[16,16],'idct2');
BB = blkproc(SB,[16,16],'idct2');

B = O;
B(:,:,1) = BR;
B(:,:,2) = BG;
B(:,:,3) = BB;

figure, subplot(1,2,1), imshow(O);
subplot(1,2,2), imshow(B);