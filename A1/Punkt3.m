close all
clear all

SW = (0:255);
SWR = uint8(zeros(256, 256));
for i = 2 : 256
    SWR(i,:) = SW;
end

SRV = uint8(zeros(256, 256, 3));
SRV(:,:,1) = SWR;

SRH = uint8(zeros(256, 256, 3));
SRH(:,:,1) = SWR';

WRV = uint8(zeros(256, 256, 3));
WRV(:,:,1) = 255;
WRV(:,:,2) = SWR;
WRV(:,:,3) = SWR;

WRH = uint8(zeros(256, 256, 3));
WRH(:,:,1) = 255;
WRH(:,:,2) = SWR';
WRH(:,:,3) = SWR';

figure, subplot(2,2,1), imshow(SRV);
subplot(2,2,2), imshow(SRH);
subplot(2,2,3), imshow(WRV);
subplot(2,2,4), imshow(WRH);
