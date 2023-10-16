%%Gauss Seidal
clc
clear all
A = [2,4,1;1,-1,4;3,1,-1];
B = [7;4;3];
n = size(A,1);
x0 = zeros(1,n);
toll = 10^-4;
err = ones(1,n);
while(norm(err,"inf")>toll)
    for i = 1:n
        sum = 0;
        for j = 1:3
            if j ~=i
              sum = sum+A(i,j)*x0(j);
            end
        end
        x(i) = (B(i)-sum)/A(i,i);
    end
    err(i) = x(i)-x0(i);
    x0(i) = x(i);
end
disp (x);