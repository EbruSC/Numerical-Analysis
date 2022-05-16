% bisection(ikiye bölme) yöntemi
clear all;
clc;
close all;
a=0.0;
b=1.0;
%hata=0.001;
baslangic=1;
fprintf('start \t a \t\t b \t\t\t fa \t\t \tfb \t\t c \t\t\t fc \t\t\t \n');
while(baslangic<5)
    fa=3*a.^2+exp(a);
    fb=3*b.^2+exp(b);
    c=(a+b)/2;
    fc=3*c.^2+exp(c);
    %h=abs(a-b)/2;
    fprintf('\n%d \t %f \t %f \t %f \t %f \t %f \t %f \t %f \n',baslangic,a,b,fa,fb,c,fc);
    if fa*fc < 0
        b=c;
    else
        a=c;
    end
    
    baslangic=baslangic+1;

end
