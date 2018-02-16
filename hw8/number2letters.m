function res=number2letters(n)
  nl = [ 0 3 3 5 4 4 3 5 5 4;3 6 6 8 8 7 7 9 8 8;0 6 6 5 5 5 7 6 6 0 ];
  s = floor(n/100);
  d = rem(n,100);
  
  res = 0;
  if s>1
    res = nl(1,s+1)+7
  elseif s==1 && d == 0
    res = 10;
    return
  elseif s==1 && d>0
    res = 10;
  end
  if d > 9 && d <= 19
    res = res + nl(2,rem(d,10)+1);
  else
    e = floor(d/10);
    if e > 0
      res = res + nl(3,e);
    end
    f = rem(d,10);
    res = res + nl(1,f+1);
  end
  