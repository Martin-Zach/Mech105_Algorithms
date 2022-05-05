
A = [10, 2, -1; 
    -3, -6, 2;
    1, 1, 5];
% Set up b
b = [27; -61.5; -21.5];
% Solve for x
x = A\b;

% Test your function
[L, U, P] = luFactor(A)
function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[rows,cols]=size(A)
if rows~=cols
    error('Matrix is not square')
end
L=eye(rows)
P=L

for i = 1:rows
    [~,indx]=max(abs(A(i:rows,i)));
    indx=indx+i-1;
         
    if indx~=1
        newrow=A(i,:);
        A(i,:)=A(indx,:);
        A(indx,:) = newrow;
    end
   
    if indx~=1
        newrow=P(i,:)
        P(i,:)=P(indx,:)
        P(indx,:) = newrow
    end

if i>2 | i ==2
    newrow=L(i,1:i-1)
    L(i,1:indx-1)=L(indx,1:i-1)
    L(indx,1:i-1)=newrow
end
for changerow=i+1:rows
    L(changerow,i)=A(changerow,i)/A(i,i);
    A(changerow,:)=A(changerow,:)-L(changerow,i)*A(i,:);
end
end
U=A
end