% en küçük kareler eğri uydurma
clc;
clear all;

syms a;
syms b;
syms x;
% noktalar A(0,6.4), B(1,2.6), C(2,0.5), D(3,0.6), E(4,0.3) buradan y=ax+b e yerine koy


A=[0 1 ;1 1; 2 1; 3 1;4 1]
At=A.' %transpoz hesabı " .' "
B=[6.4;2.6;0.5;0.6;0.3];
%X=[a;b];

result1=At*A
result2=At*B
X=inv(result1)*result2    % inv matrisin tersini alır
a=X(1)
b=X(2)
y=a*x+b

x=-10:1:10;
y=a*x+b;

