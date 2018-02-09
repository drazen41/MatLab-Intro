function w = move_me(v,a)
  b = 0;
  if nargin==2
    b=a;
  end
  w = [v(v~=b) v(v==b)];
