%%Power Method
clc
clear all
A = [1,1,0,0;1,2,0,1;0,0,3,3;0,1,2,3];
X0 = [1;1;0;1];
toll = 10^-4;
err = inf;
while err>toll
    Y = A*X0;
    K = norm(Y,"inf");
    X1 = Y/K;
    err = norm(X1-X0,"inf");
    X0=X1;
end
disp (X0);
disp(K);