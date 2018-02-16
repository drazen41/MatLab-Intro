function v=huge_add(v1,v2)  
  if ~ischar(v1) || ~ischar(v2) || ~isempty(regexp(v1,'\D')) || ~isempty(regexp(v2,'\D'))  
    v=-1;
    return
  end
  t1 = v2;
  t2 = v1;
  pamtim = 0;
  v='';
  if length(v1)>length(v2)
    t1 = v1;
    t2 = v2;
  end
  for i=t1(end:-1:1)
    a = str2num(i);
    c = -1;
    if ~isempty(t2)
      c = str2num(t2(end));
      t2 = t2(1:end-1); 
    end
    if c>-1
      d = a+c;
      if pamtim
        d = d+1;
        pamtim = false;
      end
      if d>9
        pamtim = 1;
       % v = strcat(num2str(d(2)),v)
       v = strcat(num2str(d)(2),v);
      else
        v = strcat(num2str(d),v);
        
      end
    else
      if pamtim
        d = a + 1;
        pamtim = false;
      else
        d = a;
      end
      if d > 9
        pamtim = true;
        v = strcat(d(2),v);
      else
        v = strcat(num2str(d),v);
      end
    end
  end
  if pamtim
    v = strcat('1',v);
  end