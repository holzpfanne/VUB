close all;
clear

C = imread('palast_crypt.jpg');

n = size(C);

load('key.mat', 's');
rng(s)

newPos = uint32(randperm(n(1)));

B = uint8(zeros(n(1),n(2),n(3)));

for i = uint32(1:n(1))
    B(newPos(i),:,1) = C(i,:,1);
    B(newPos(i),:,2) = C(i,:,2);
    B(newPos(i),:,3) = C(i,:,3);
end

figure, imshow(B);

% jpg ist keine verlust frei Daten kopression für bilder, somit gehen
% informationen verloren

% um das bild wieder vollständig rekonstrurieren zu können müsste man das
% Bild Verlusstfrei kompremieren