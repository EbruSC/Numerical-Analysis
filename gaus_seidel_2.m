% gaus seidel
% 5x1-x2+2x3=12
% 3x1+8x2-2x3=-25
% x1+x2+4x3=6

% x1,x2,x3=0
% tol= 0.001

% Gaus Seidel Method

clear all;
clc;
close all;
x1=0;
x2=0;
x3=0;
tol=0.001;
fprintf(" start     x1        x2        x3       hata\n");
for i=1:100
    
    x1s=(12+x2-2*x3)/5;
    x2s=(-25-3*x1s+2*x3)/8;
    x3s=(6-x1s-x2s)/4;
   
    hata=max(abs([x1s-x1 x2s-x2 x3s-x3]));
    fprintf(' \n %d     %f     %f    %f   %f\n',i,x1,x2,x3,hata);
    if(hata<tol)
        break;
    end
    x1=x1s;
    x2=x2s;
    x3=x3s;
end
