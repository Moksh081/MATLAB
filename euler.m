%%modified euler
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
    x(i+1) = x(i)+h;
    y(i+1) =y(i)+h*f(x(i),y(i));
    y(i+1) = y(i)+(f(x(i),y(i))+f(x(i+1),y(i+1)))*h/2;
end
disp(x);
disp(y);

