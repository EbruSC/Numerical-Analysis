% LU AYRIŞIMI
clc;
clear all;

A=[1 2 5;-1 0 2; 2 1 3];b=[2;0;1];

[n m]=size(A);
[n m]


 U=zeros(n);L=eye(n);
 U
 L
 U(1,1:n)=A(1,1:n);
 U
 L(1:n,1)=A(1:n,1)/U(1,1);
 L
 for i=2:n
 for j=i:n
 U(i,j)=A(i,j)-L(i,1:i-1)*U(1:i-1,j);
 U
 end
 for j=i+1:n
 L(j,i)=(A(j,i)-L(j,1:i-1)*U(1:i-1,i))/U(i,i);
 L
 end
 %L(i+1:n,i)=L(i+1:n,i)/U(i,i);
 end

[n m]=size(A);
y=zeros(n,1);
y
x=zeros(n,1);
x
for i=1:n
 y(i)=b(i)-L(i,1:i-1)*y(1:i-1);
end
y
for i=n:-1:1
 x(i)=(y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
end
x
fprintf('%s %s\n','Çözüm','-> x');
fprintf('%f\n',x)