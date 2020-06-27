function[]=NewtonDivide(n,x,f)
b=ones(n,n);
b(:,1)=f';
for i=2:1:n
    for j=1:1:n
        b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(1,i+j-1)-x(1,i));
    end
end
sum=b(1,1);
for i=2:1:n
    num=b(1,i);
    for j=1:1(i-1)
        num=num*x(1,j);
    end
    sum=sum+num;
end
disp (sum)