% doğrusal interpolasyon yöntemi
clear all;
clc;
close all;
a=-1.0;
b=1.0;
hata=0.001;
baslangic=1;
fprintf('start \t a \t\t b \t\t\t fa \t\t \tfb \t\t c \t\t\t fc \t\t\thata \n');
for i=1:100
    fa=exp(a)-5*sin(pi*a/2);
    fb=exp(b)-5*sin(pi*b/2);
    c=(a*fb-b*fa)/(fb-fa); % orta nokta
    fc=exp(c)-5*sin(pi*c/2);
    h=abs(fc); % hata değeri
    fprintf('%d \t %f \t %f \t %f \t %f \t %f \t %f \t %f\n',baslangic,a,b,fa,fb,c,fc,h);
    if fa*fc < 0
        b=c;
        fb=fc; %
    else
        a=c;
        fa=fc; %
    end
    if(h<hata)
        break;
    end
    baslangic=baslangic+1;

end
