function [product,ind]=max_product(v,n)
  if length(v)<n
    product=0;
    ind = -1;
    return
  end
  t = -Inf;
  ind = 1;
  for i=1:length(v)-n+1
    %i
    a = 1;
    %t
    for j=i:i+n-1
     %j 
     %vJ = v(j)
     a = a * v(j);
      
    end
    if a>t
        t = a;
        ind = i;
    end
  end
  product = t;