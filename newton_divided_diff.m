%%Newton divided diff
clc
clear all
x = [0;1;3;4;7];
f = [1;3;49;129;813];
n = length(x);
F = zeros(n,n);
F(:,1) = f;
for j = 2:n
    for i = j:n
        F(i,j) = (F(i,j-1)-F(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
p = 0.3;
sum = 0;
for i = 1:n
    prod(i) = 1;
    for j = 1:i-1
        prod(i) = (p-x(j))*prod(i);
    end
    sum = sum + prod(i)*F(i,i);
end
disp (sum);