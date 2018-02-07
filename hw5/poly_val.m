function p=poly_val(c0,c,x)
  if isempty(c)
    p = c0;
    return
  end
  if isscalar(c)
    p = c0 + c*x;
    return
  end
  row = size(c,1);
  col = size(c,2);
  if row > col
    c = c';
  end
  %N = [row:col];
  N = [size(c,1):size(c,2)];
  %p = N;
  %return
  a = x .^ N;
  p = c0 + sum(c .* a);
  