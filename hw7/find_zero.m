function x=find_zero(f,x1,x2)
  
  if ~isscalar(x1) || ~isscalar(x2) || x1>x2
    x=Inf;
    return
  end
  t = (x1+x2)/2
  y = f(t)
  
  while abs(y) > 1e-10
    a = abs(f(x1))-abs(y)
    b = abs(f(x2))-abs(y)
    if abs(a)<abs(b)
      x2 = t
    else
      x1 = t
    end
    t = (x1+x2)/2
    y = f(t)
  end
  
  x = t;
  
  