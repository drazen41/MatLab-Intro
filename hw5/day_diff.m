function res=day_diff(month1,day1,month2,day2)
  days = [31,28,31,30,31,30,31,31,30,31,30,31];
  if  ~isscalar(month1) || ~isscalar(month2) || (month1 ~= floor(month1)) || (month2 ~= floor(month2))
      res = -1;
      return
  end
  if  (month1 <= 0) || (month1>12) || (month2 <=0) || (month2 >12 ) 
    res = -1;
    return
  end
  if ~isscalar(day1) || ~isscalar(day2) || (day1 ~= floor(day1)) || (day2 ~= floor(day2))
     res = -1;
    return
  end
  if (day1 <= 0) || (day2 <=0) || day1>days(month1) || day2>days(month2)    
    res = -1;
    return
  end
  if month1 > month2
    tempM = month1;
    month1 = month2;
    month2 = tempM;
    tempD = day1;
    day1 = day2;
    day2 = tempD;
  end
  if month1 == month2 && day1<=day2
    res = day2-day1;    
  elseif month1 == month2 && day1 > day2
    res = day1 - day2;
  else
    res = (sum(days(month1))-day1) + day2;
    if (month2-1)>month1
      rest = [(month1+1): (month2-1)];
      res = res +  sum(days(rest(1):rest(end)));
    end
    %res = [days(month1+1):days(month2-1)];
    
    
  end