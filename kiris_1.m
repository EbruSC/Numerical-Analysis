%SECANT (KİRİŞ) METODU

clear all;
clc;
close all;
fprintf(" ");

x1=1.0;
x0=3.0;
tol=0.001;
fprintf(" start        x2        abs(x2-x1)     \n");

for i=1:100
    fx1=x1.^3+2*x1-4;
    fx0=x0.^3+2*x0-4;
    x2=x1-(fx1*(x1-x0))/(fx1-fx0);
    hata=abs(x2-x1);
    fprintf(' \n %d        %f        %f  \n',i,x2,hata);
    if hata<tol
        break;
    end
    x0=x1;
    x1=x2;
end
fprintf("\n kök(x2) değeri:");
fprintf("%f",x2);

