function [arabaSayisi2] = CountCar2()
cam2=webcam(2);
referans2=snapshot(cam2);
figure;
subplot(2,2,2);
imshow(referans2)
pause(5)
yol2=snapshot(cam2);
figure;
subplot(2,2,2);
imshow(yol2);
gri3=rgb2gray(referans2);
figure,imshow(gri3);
gri4=rgb2gray(yol2);
figure,imshow(gri4);

fark=imsubtract(gri3,gri4); %r1 ve r2 arasındaki fark bulunur.
figure,imshow(fark)

imgFark3=imbinarize(fark,0.09);%resim siyah beyaz hale getirildi, (sayı parametresini kendine göre değiştirebilirsin)
figure,imshow(imgFark3)

imgFark4=fark>20;
figure,imshow(imgFark4);

imgFark3=bwareaopen(imgFark4,30); %nesnelerin çevresindeki istenmeyen gürültüleri siler. ''30'' demek 30 pikselden az olanları sil demek.
figure,imshow(imgFark3)

se=strel('square',4);
imgDilate_1=imdilate(imgFark3,se); %nesneleri belirginleştirir.
figure,imshow(imgDilate_1)

[etiketler , arabaSayisi2] = bwlabel(imgDilate_1)
end