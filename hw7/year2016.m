function m=year2016(n)
  if length(n)>1 || n< 1 || n>12 || mod(n,1)>0 
    m = [];
    return
  end
  months = {'January', 'February', 'March', 'April', 'May', 'June', ...
	'July', 'August', 'September', 'October', 'November', 'December'};
  dayNums = [31,29, 31,30,31,30,31,31,30,31,30,31];
  dayNames = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
  jan1 = 5;
  dana = 0;
  danaPrije = sum(dayNums(1:n-1));    
  start = mod(danaPrije+jan1,7); 
  if start == 0
    start = 7;
  end
  daniStart = dayNums(n);
  
  for i=1:daniStart
    m(i).month=months{n};
    m(i).date = i;
    if start > 7
      start = start - 7;
    end
    m(i).day = dayNames{start};
    start = start+1;
  end
  
  
  
  
  
  
  