% EN KÜÇÜK KARE METODU / EĞRİ UYDURMA
clc ;
clear all;
close all;
syms a;
syms b;
syms x;

A=[0 1; 1 1; 2 1; 3 1; 4,1];
At=A.';
B=[6.4;2.4;0.5;0.6;0.3];
result1=At*A;
result2=At*B;
X=inv(result1)*result2
a=X(1)
b=X(2)
x=-10:1:10;
y=a*x+b;
plot(x,y,'-rs','LineWidth',2);