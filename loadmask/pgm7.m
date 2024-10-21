I=imread('price.png');
background=imopen(I,strel('disk',15));
Ip = imsubtract(I,background); 
imshow(Ip,[])
I=imread('rice.png');
            Iq = imsubtract(I,50);
figure,imshow(I),
figure,imshow(Iq)
