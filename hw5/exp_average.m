function out=exp_average(in,b)
  persistent ema;
  persistent b1;
  if nargin==1 && isempty(ema) && isempty(b1)
    b1 = 0.1;
    ema = in;
    out = ema;
    return
  elseif nargin==1 && ~isempty(b1)
    %b1 
    %ema
    ema = b1*in + (1-b1)*ema;
    out = ema;
    return
  else
 
    ema = in;
    out = ema;
    b1 = b;
    
  end
   