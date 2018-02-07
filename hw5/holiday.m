function ret=holiday(month,day)
  holidays = [1 1; 7 4; 12 25; 12 31];
  if sum(holidays(1:end,1)==month & holidays(1:end,2)==day)==1
    ret = logical(1);
  else
    ret = logical(0);
  end
  