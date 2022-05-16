% newton raphson
clear all;
clc;
close all;
x0=1;
hata=0.001;
baslangic=1;
fprintf('start \t x0 \t\t x1 \t Tolerans \n');
for i=1:100
    fx0=x0.^3+2*x0-4;
    fdx0=3*x0.^2+2;
    x1=x0-fx0/fdx0;
    tol=abs(x1-x0);
    fprintf ('%d \t %f \t %f \t %f \n',i,x0,x1,tol);

    if(tol<hata)
        break;
    end
    x0=x1;
end
disp ('Yaklaşık kök:')
x0
