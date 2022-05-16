%SECANT (KİRİŞ) METODU
clear all;
clc;
close all;
fprintf(" f(x) = 2*x-0.13/sqrt(5*x^0.5)) \n [0.5,0.3] aralığında \n\n");
baslangic=1;
x1=0.0;
x0=1.0;
%tol=1.0E-5;
fprintf(" start        x2       \n");

while(baslangic<5)
    fx0=3*x0.^2+exp(x0);
    fx1=3*x1.^2+exp(x1);
    
    x2=x1-(fx1*(x1-x0))/(fx1-fx0);
    %hata=abs(x2-x1);
    fprintf(' \n %d        %f       \n',baslangic,x2);
    baslangic=baslangic+1;
    x0=x1;
    x1=x2;
end
fprintf("\n kök(x2) değeri:");
fprintf("%f",x2);

