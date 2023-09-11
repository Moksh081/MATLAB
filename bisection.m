clc
clear all
a = input("Enter a");
b = input("Enter b");
f = @(x) x.^2-4*x-2;
n = (log(b-a)+4)/0.301;
if f(a)*f(b)>0
    disp("FAIL");
else
   c =(a+b)/2;
   error = abs(f(c));
   count =1;
   while(error>10^(-4))
       if f(a)*f(c)<0
            b=c;
       else
           a=c;
       end
       c = (a+b)/2;
       error = abs(f(c));
       count = count+1;
   end
end
   disp(n);
   disp(count);
   disp(c);