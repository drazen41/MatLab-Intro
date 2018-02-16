function sm=smallest_multiple(n)
  if ~isscalar(n) || n<0
    sm = uint64(0);
    return 
  end
  sm = uint64(1);
  for i=1:n
      sm=sm*(i/gcd(sm,i));
  end
  if sm>=intmax('uint64')
    sm = uint64(0);
  end
    
    