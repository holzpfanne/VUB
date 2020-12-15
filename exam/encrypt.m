close all;
clear

O = imread('palast.jpg');

n = size(O);

s = rng;
save('key.mat', 's');

newPos = uint32(randperm(n(1)));

B = uint8(zeros(n(1),n(2),n(3)));

for i = uint32(1:n(1))
    B(i,:,1) = O(newPos(i),:,1);
    B(i,:,2) = O(newPos(i),:,2);
    B(i,:,3) = O(newPos(i),:,3);
end

imwrite(B,'palast_crypt.jpg');

figure, imshow(B);