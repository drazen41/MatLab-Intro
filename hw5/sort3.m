function [x,y,z]=sort3(vektor)
  a = vektor(1);
  b = vektor(2);
  c = vektor(3);
  x = a;
  y = b;
  z = c;
  if a <= b 
    if a <= c
      x = a;
      if b <= c
        y = b;
        z = c;
      else
        y = c;
        z = b;
      end
    else
      x = c;
      if a <= b
        y = a;
        z = b;
      else
        y = b;
        z = a;
      end
    end
    
  elseif b <= c 
   x = b;
   if a <= c
      y = a;
      z = c;
    else
      y = c;
      z = a;
    end
   else
    x = c;
    if a <= b
      y = a
      z = b
    else
      y = b;
      z = a;
    end
  end