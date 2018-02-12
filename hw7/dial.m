function n=dial(v)
  keypad = {'2ABC','3DEF','4GHI','5JKL','6MNO','7PQRS','8TUV','9WXYZ'};
  if length(v)>16
    n=uint64(0);
    return
  end
  ok = false;
  izlaz = false;
  k = 1;
  for i=1:length(v)
    ok = false;
    for j=1:length(keypad)
      a = v(i)
      if a=='0' || a=='1'
        n(k)=a
        izlaz = true;
      end
      if izlaz
        'Izlaz'
      end
      b = keypad{j}
      c = findstr(a,b)
      if c>0
        ok = true;
        n(k)=a
        k=k+1;
      end
    end
    if ok==false
      %n=uint64(0);
     return
    end
  end