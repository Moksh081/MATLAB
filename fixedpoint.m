%% Fixed point
 clc
clear all
%% Qs1
syms x
 g=@(x) exp(-x);
M = input("M");
h = input("h");
for i= -M:h:M
  if g(i)*g(i+h)<0
      a = i;
      b = i+h;
      break;
  end
end
 %ans is 0.7322;7 iterations;tol=0.0001.
df = diff(g(x));
d = inline(df);
tol = 0.0001;
count = 1;
x0 = input("x0 : ");
x1 = g(x0);
err = abs(x1-x0);
if all(g(x)<a)||all(g(x)>b)
    disp('Fail');
else
    while err>tol
        if abs(d(x))>1
            disp('Fail');
            break;
        else
            x1 = g(x0);
            err = abs(x1-x0);
            x0 = x1;
            count = count+1;
        end
    end
end
disp(x1);
disp(count);
