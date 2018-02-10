% If statement for n = 1.
sumS = 1;
if n == 1
  return
% If statement for n > 1
elseif n>1
% Value when n = 1.
for counter = n:-2:2
% This code sums the corner values of each layer from a 3 x 3 to a n x n
% matrix. The counter is evaluating the layers values.
  %sumS = sumS + sum (counter^2:-(counter-1):(counter-2)^2+1);
  a = counter^2;
  b = (counter-1);
  c = (counter-2)^2;
  sumS = sumS + sum(a:-b:c+1);
  
end
end
21   22   23   24   25
   20    7    8    9   10
   19    6    1    2   11
   18    5    4    3   12
   17   16   15   14   13