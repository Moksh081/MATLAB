clc
clear all
f=@(x) x^3-5*x+1;
x0=input('Enter x0: ');
x1=input('Enter x1: ');
tol=input('Enter the tolerance value:\n ');
N=input('Enter the no. of iterations N:\n ');
for j= 0:N
    x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0));
    if abs(x1-x0)<=tol
        disp(x2);
        break 
    else
    x0=x1;
    x1=x2;
    end
end

