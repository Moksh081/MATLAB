clc;
clear;
A = [1,2,4;3,8,14;2,6,13];
b = [3;13;4];
n = length(b);
Y = [0;0;0];
X = [0;0;0];
M = eye(n);
for j = 1:(n-1)
    for i = (j+1):n
        M(i,j) = A(i,j)/A(j,j);
        A(i,:) = A(i,:)-(M(i,j)*A(j,:));
    end
end
L = M;
U = A;
Y(1) = b(1);
for i = 2:n
    Y(i) = b(i) - L(i,1:i-1)*Y(1:i-1);
end
X(n) = Y(n)/U(n,n);
for i = (n-1):-1:1
    X(i) = (Y(i)-U(i,i+1:n)*X(i+1:n))/U(i,i);
end
disp(X);