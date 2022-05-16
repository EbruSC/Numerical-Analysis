% cos(x) fonksiyonunun taylor seri açılımı
clear all;
clc
close all;
syms x
y=cos(x);
n=5;
for i=1:n
    tay(1,i)=y;
    y=diff(y);
end
x=1;
tay1=subs(tay);
syms x
for i=1:n
    taylor(1,i)=tay1(1,i)/factorial(i-1)*x^(i-1);
    fplot(taylor);
end
TAYLOR=sum(taylor);
tay
tay1
taylor
TAYLOR