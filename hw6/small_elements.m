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
 