function mon=day_counter(godina)
  if ~isscalar(godina) || godina<1776 || godina>2016
    error('Wrong argument');
  end
  dayNames = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
  dayNums = [31,28, 31,30,31,30,31,31,30,31,30,31];
  prviPrvi1776 = dayNames(1);
  suma = 0;
  mon = 1;
  zadnji = false;
  for i=1776:godina
      if zadnji || i==1776
        mon = 1;
      else
        mon = 0;
      end     
      prestupna = false;
      if (rem(i,4)==0 && rem(i,100)~=0) || (rem(i,400)==0)
        prestupna = true;       
      end
      for j=1:length(dayNums)
        if j==2 && prestupna
          suma = suma + 29;
        else
          suma = suma + dayNums(j);
        end
        %suma
        %ostatak = rem(suma,7)
        if rem(suma,7)==0
          if j~=12
            mon = mon+1;
          end
          %if i==2000
          %godina = i
          %mjesec = j+1
          %mon
          %end
          if i==(godina-1) && j==12
            zadnji = true;
            
          end
          
        end
       
       
        
      end
      
  end
  