function n=digit_counter(filename)
n=0;
fid = fopen(filename,'rt');
if fid < 0
    n=-1;
    return
end
str = fscanf(fid,'%c');
n = length(regexp(str,'[0-9]'));

fclose(fid);