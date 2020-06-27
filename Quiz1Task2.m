fprintf('task2');
x= -5 : 5;
y=x.^2 + x -12;
fprintf(' \n\n');

for i =1 : length(x)

    fprintf(' for x= %d, y=%d\n\n', x(1,i), y(1,i));
end
fprintf ('\n\n------\n');
plot(x,y), xlabel('value of x'), ylabel('value of y');