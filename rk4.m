%%RK 4th order
clc
clear all
f =@(x,y)-y+2*cos(x) ;
x0 = 0;
y0 =1;
xn = 1;
h = 0.2;
n = (xn-x0)/h;
x(1) = x0;
y(1) = y0;
for i= 1:n
    k1 = f(x(i),y(i));
    k2 = f(x(i)+h/2,y(i)+(k1)/2);
    k3 = f(x(i)+h/2,y(i)+(k2)/2);
    k4 = f(x(i)+h,y(i)+k3);
    y(i+1) = y(i)+(k1+2*k2+2*k3+k4)*h/6;
    x(i+1) = x(i)+h;
end
disp(x);
disp(y);