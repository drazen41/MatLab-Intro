function s=halfsum(A)
  t = 1;
  s = 0;
  for i=size(A,1):-1:1
    for j=t:size(A,2)
      %A(i,j);
      s = s+A(i,j);
    end
    t = t+1;
  end
  
  