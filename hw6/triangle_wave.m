function v=triangle_wave(n)
  t = [0:4*pi/1000:4*pi];
  v = [];
  c = 0;
  d = 0;
  for t1 = 1:length(t)
    for k=0:n      
      %t(t1)
      k;
      (-1)^k;
      a = ((-1)^k)*(sin((2*k+1)*t(t1)));
      b = (2*k+1)^2;     
      c = a / b;
      d = d + c;
    end
    v = [v d];
    c = 0;
    d = 0;
  end
  
  