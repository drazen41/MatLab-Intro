function r=eligible(v,q)   
  a = 0;
  if v>88 && q>88 && ((v+q)/2)>=92
    a = 1;
  end
  r = logical(a);