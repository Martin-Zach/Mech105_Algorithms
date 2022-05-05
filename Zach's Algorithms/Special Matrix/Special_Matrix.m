function [A] = specialMatrix(n,m)
if nargin~=2
    error('Invalid number of inputs')
end
c=1;
d=1;
for i = 1:m
    A(c,d) = i;
    d = d + 1;
end
d =1;
for i = 1:n
    A(c,d) = i;
    c = c + 1;
end
c=2 ;
d=2;
for i = 1:n-1
    for i = 1:m-1
    A(c,d) = A(c,d-1) + A(c-1,d);
    d = d + 1;
    end
    c = c + 1;
    d = 2;
end
display(A)