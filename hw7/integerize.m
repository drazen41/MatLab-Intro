function n=integerize(A)
  a = min(A(:));
  b = max(A(:));
  c = 0;
  if abs(a)>abs(b)
    c = a;
  else
    c = b;
  end
  if c >=-2^7 && c<=2^7-1
    n = 'int8';
    return
  elseif c >= -2^15 && c <=2^15-1
    n = 'int16';
    return
  elseif c>=-2^31 && c<=2^31-1
    n = 'int32';
    return
  elseif c>=-2^63 && c<=2^63-1
    n='int64';
    return
  else
    n = 'NONE';
  end
    
    
    
    