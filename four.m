function X = four(schwelle) 
close all

L = imread('Lenna.png');

G = rgb2gray(L);
S = blkproc(G,[8,8],'dct2');

Q=[16 11 10 16 24 40 51 61;
    12 12 14 19 26 58 60 55;
    14 13 16 24 40 57 69 56;
    14 17 22 29 51 87 80 62;
    18 22 37 56 68 109 103 77;
    24 35 55 64 81 104 113 92;
    49 64 78 87 103 121 120 101;
    72 92 95 98 112 100 103 99];

S=round(blkproc(S,[8 8], 'x./P1',Q));

S= blkproc(S,[8 8], 'x.*P1',Q);

S(abs(S)<schwelle) = 0;

B = blkproc(S,[8,8],'idct2');
figure, subplot(1,3,1), imshow(uint8(G))
subplot(1,3,2), imshow(uint8(S))
subplot(1,3,3), imshow(uint8(B))

end

