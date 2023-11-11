%%Gauss Seidal
clc
clear all
A = [4.63 -1.21 3.22;-3.07 5.48 2.11; 1.26 3.11 4.57];
B = [2.22 -3.17 5.11];
n = size(A,1);
x0 = zeros(1,n);
toll = 10^-4;
err = ones(1,n);
while norm(err,"inf")>toll
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j ~=i
              sum = sum+A(i,j)*x0(j);
            end
        end
        x(i) = (B(i)-sum)/A(i,i);
    err(i) = x(i)-x0(i);
    x0(i) = x(i);
    end
end
disp (x);
