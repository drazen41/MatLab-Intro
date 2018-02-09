function noprealloc
N = 1000;
for ii = 1:N
    for jj = 1:N
        A(ii,jj) = ii*jj;
    end
end