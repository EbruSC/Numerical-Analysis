%Gaus Seidel Method
clear all;
clc;
close all;
x1=0;
x2=0;
x3=0;
tol=0.001;
fprintf(" start     x1        x2        x3       hata\n");
for i=1:100
    
    x1s=(23-2*x2-3*x3)/10;
    x2s=(-9-2*x1s-3*x3)/(-10);
    x3s=(12+x1s+x2s)/5;
    % hatayı bulmak için x den sonraki değerlerden x den önceki değerleri çıkartırız. 
    % Çıkarma İşlemi mutlak değer içindedir.
    % abs mutlak değer alır.
    % max komutu ise max farkı bize verir.
    hata=max(abs([x1s-x1 x2s-x2 x3s-x3]));
    fprintf(' \n %d     %f     %f    %f   %f\n',i,x1,x2,x3,hata);
    if(hata<tol)
        break;
    end
    x1=x1s;
    x2=x2s;
    x3=x3s;
end
