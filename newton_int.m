
function Y = newton_int(xArray, yArray)

if(length(xArray) ~= length(yArray))
    fprintf('Error in Input\n');

else
    fprintf('\n\nPoint???\n');
    m = input(' ');
    xArray = xArray';
    len = length(xArray);
    nMat = zeros(len, len);
    nMat(:, 1) = yArray';
    for j = 2 : len
        for i = 1 : len-j+1
            nMat(i, j) = (nMat(i+1, j-1) - nMat(i, j-1)) / (xArray(i+j-1) - xArray(i)) ;
        end
    end
    b = nMat(1, :);
    Y = b(1);
    prodX = 1;
    for i = 1 : len-1
        prodX = prodX * (m - xArray(i));
        Y = Y + b(i+1) * prodX;
    end
    fprintf('\n\nInterpolation');
end