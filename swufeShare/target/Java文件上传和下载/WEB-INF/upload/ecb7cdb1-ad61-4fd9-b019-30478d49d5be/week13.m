
I1=pic(pozitionR1:pozitionR2,pozitionC1:pozitionC2,:); 
figure(1),imshow(I1),title('剪切后的彩色车牌图像');

b=rgb2gray(I1);  %将图转化为灰度图
g_max=double(max(max(b)));%得出剪裁后灰度图矩阵的最大值，并变成双精度浮点型
g_min=double(min(min(b)));%得出剪裁后灰度图矩阵的最小值，并变成双精度浮点型
figure(2),imshow(b),title('灰度图');
T=round((g_max-(g_max-g_min)/2)-20); 
d=(double(b)>=T);  % d:二值图像
imwrite(d,'2.车牌二值图像.jpg');
figure(3),imshow(d),title('二值图像');
