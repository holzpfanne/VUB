close all
clear all

raw = imread('Lenna.png');

gray = RGB2luminance(raw);
matlab_gray = rgb2gray(raw);
dif1 = imsubtract(matlab_gray, gray);
dif2 = imsubtract(gray, matlab_gray);

figure, imshow(raw);
figure, subplot(2,3,1), imshow(gray), title('my gray');
subplot(2,3,4), imshow(matlab_gray), title('matlab gray');
subplot(2,3,2), imshow(dif1), title('matlab gray - my gray');
subplot(2,3,5), imshow(dif2), title('my gray - matlab gray');
%um die Differnez besser sehen zu können wurde sie um den Faktor 50
%verstärkt
subplot(2,3,3), imshow(dif1*50), title('(matlab gray - my gray) * 50');
subplot(2,3,6), imshow(dif2*50), title('(my gray - matlab gray) * 50');
