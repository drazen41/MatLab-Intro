function ind=small_elements(X)
 k = 1;
 ind = [];
 for i=1:size(X,2)
  for j=1:size(X,1)
   if X(j,i)<(j*i)
    ind = [ ind; j i];
    %i
    %j
    %X(j,i)
    %k = k + 1 
   end
   %X(i,j) 
  end
 end
 
 %   The matrix multiplication of a column vector of the row numbers and 
%   a row vector of the column numbers gives the indices of the matrix. 
%    [r,c] = size(X);
 %   [x,y] = find(X < ((1:r)' * (1:c)));
 %   I = [x(:), y(:)];