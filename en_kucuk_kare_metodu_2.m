clc;
clear all;
syms a;
syms b;
syms x;

A=[1 1; 0 1; 2 1; 3 1];
At=A.';
B=[3;3;5;4];
result1=At*A
result2=At*B
X=inv(result1)*result2
a=X(1)
b=X(2)
x=-10:1:10;
y=a*x+b;
plot(x,y,'-rs','linewidth',2);