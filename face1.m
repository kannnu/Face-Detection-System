FDetect = vision.CascadeObjectDetector;
I = imread('123.jpg');
BB = step(FDetect,I);
figure,
imshow(I);
hold on;
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',2,'LineStyle','-','EdgeColor','b');
end
hold off;
title('Face Detection');
n = size(BB,1);
str_n = num2str(n);
str = strcat('number of detected faces are = ',str_n);
disp(str);