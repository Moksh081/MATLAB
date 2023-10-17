%%GAUSS ELIMINATION
clc
clear all
A = [10,8,-3,1;2,10,1,-4;3,-4,10,1;2,2,-3,10];
B = [16;9;10;11];
n = length(B);
x = zeros(n,1); %%initializing vector A with 0 having n rows and 1 col
aug = [A B];
for j=1:n-1
    for i=j+1:n
        m = aug(i,j)/aug(j,j);
        aug(i,:)=aug(i,:)-m*aug(j,:);
    end
end
x(n) = aug(n,n+1)/aug(n,n);
for k=n-1 : -1:1
    x(k)=(aug(k,n+1)-(aug(k,k+1:n))*x(k+1:n))/aug(k,k);
end
disp(x);