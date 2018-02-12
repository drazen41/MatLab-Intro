function n=palin_product(dig,lim)
  % palin_product(2,9010)=9009 - 91,99
  % n = factor(lim)
  a = 10^(dig-1);
  b = 10^dig -1;
  c = (a:b);
  kraj = false;
  n=0;
  if a*a>=lim
    return
  end
  for i= b:-1:a
    kraj = false;
    for j=b:-1:a
      s = i*j;
      if s>=lim 
        continue
      end
      if s<n
        break
      end
      s1 = str2num(fliplr(num2str(s)));
      if s == s1
        n=s;
      end
      
    end
    
  end