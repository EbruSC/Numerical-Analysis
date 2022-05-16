% (Tekrarlama Metodu) Fixed-point Algorithm 
% f(x) = sin(x)+x= 0  [0,1]

syms x;
 
a=1;
b=3;

tol =0.001; 
fa=sin(a)+a;
fb=sin(b)+b;
if(fa*fb < 0)
    fprintf("bu aralıkta kök var");
end

x0=1;
gx0=1-sin(x0);
fprintf('\nstart \t x0 \t x1=f(x0)\t x2=f(x1)\t tol(x2-x1) \n');
for i=1:100;
    x1=1-sin(x0);
    x2=1-sin(x1);
     % kabul şartı kontrol edilir
    
    
    hata=abs(x1-x0);
    fprintf ('%d \t %f \t %f \t %f \t %f \n',i,x0,x1,x2,hata);
    if hata < tol
       %fprintf('\n yaklaşık çözüm: x1 = %f\n\n', x1);
       break;
    else
        x0=x1;
        x1=x2;
     end
 end