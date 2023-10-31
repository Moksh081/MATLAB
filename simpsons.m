clc
clear all
f = @(x) (cos(x))^2;
a = -0.25;
b = 0.25;
n = 1;
h = (b-a)/n;
sum2 = 0;
sum3 = 0;
for i=1:n-1
    if rem(i,2)==0
        sum2 = sum2 + 2*f(a+i*h);
    else
        sum3 = sum3 + 4*f(a+i*h);
    end
end
t = (f(a)+f(b)+sum2+sum3)*h/3;
disp(t);