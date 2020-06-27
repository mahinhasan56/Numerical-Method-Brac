function [] = Lagrange (X,xArr,f,n)
sum=0;
for i=1:1:n
    sm=1;
    for j=1:1:n
    if i~=j
        sm=sm*(X-xArr(1,j))/(xArr(1,i)-xArr(1,j));
    end
    end
    sum=sum+(sm*f(1,i));
end
disp(sum)
