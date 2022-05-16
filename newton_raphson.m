% newton raphson
clear all;
clc;
close all;

x0=1.3; % start değeri=x0
hata=1.0E-6;
baslangic=1;
fprintf('start\t x0 \t\t x1 \t Tolerans  \n');

for i=1:100
    fx0=sqrt(2*x0)+log(x0)-2*sin(x0/2);
    fdx0=1/sqrt(2*x0)+1/x0-cos(x0/2);
    x1=x0-fx0/fdx0;
tol=abs(x1-x0);
fprintf('%d \t %f \t %f \t %f \n',i,x0,x1,tol);
    if(tol<hata)
        break;
    end
    x0=x1;
end 
disp('Yaklaşık kök:')
x0
