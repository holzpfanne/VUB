A=imread('Lenna.png');
dim = size(A);
height = dim(1);
width = dim(2);
channels=dim(3);

s=rng;                  % Zustand des Zufallsgenerators
save('key.mat','s');

newPosition = uint32(randperm(width*height*channels));   %generate random sequence

B = uint8(zeros(height, width, channels));


for i=uint32(1:height*width*channels)
            B(i) = A(newPosition(i));  
end

 
figure, imshow((B));

imwrite(B,'crypt_lena.jpg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Decoder
B=imread('crypt_lena.jpg');

C = uint8(zeros(height, width, channels));
load('key.mat','s');
rng(s);                     %Random Generator wird synchronisiert

newPosition = uint32(randperm(width*height*channels)); 

 for i=uint32(1:height*width*channels)
            C(newPosition(i)) = B(i);
 end
figure, subplot(3,1,1), imshow(A);  %Original
subplot(3,1,2), imshow(B);          %Verschlüsselte Bild
subplot(3,1,3), imshow(C);          %Entschlüsselte Bild




