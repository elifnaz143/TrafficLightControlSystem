function [arabaSayisi] = CountCar1()
cam=webcam;

referans1=snapshot(cam);
figure;
subplot(2,2,1);
imshow(referans1);
pause(5)
yol1=snapshot(cam);
figure;
subplot(2,2,1);
imshow(yol1);
gri1=rgb2gray(referans1);
gri2=rgb2gray(yol1);

figure,imshow(gri1);
figure,imshow(gri2);

fark=imsubtract(gri1,gri2); %r1 ve r2 arasındaki fark bulunur.
figure,imshow(fark)

imgFark=imbinarize(fark,0.09);%resim siyah beyaz hale getirildi, (sayı parametresini kendine göre değiştirebilirsin)
figure,imshow(imgFark)

imgFark2=fark>20;
figure,imshow(imgFark2);

imgFark=bwareaopen(imgFark2,30); %nesnelerin çevresindeki istenmeyen gürültüleri siler. ''30'' demek 30 pikselden az olanları sil demek.
figure,imshow(imgFark)

se=strel('square',4);
imgDilate=imdilate(imgFark,se); %nesneleri belirginleştirir.
figure,imshow(imgDilate)

[etiketler , arabaSayisi] = bwlabel(imgDilate)
end
