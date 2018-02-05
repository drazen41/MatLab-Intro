function [v,a]=sindeg(deg)
  r = deg .* 0.0174532925;
  v = sin(r);
  [t1,t2] = size(deg);
  t = t1*t2;
  a = sum(sum(v)) / t;
  %a = sum(sum(v));
  