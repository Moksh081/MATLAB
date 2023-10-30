%%interpolation 
clc
clear all
x = [0;1;3;4;7];
y = [1;3;49;129;813];
n = length(x);
f = zeros(n,n);
f(:,1) = y;
for j=2:n
    for i=j:n
        f(i,j) = (f(i,j-1)-f(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
    disp(f);