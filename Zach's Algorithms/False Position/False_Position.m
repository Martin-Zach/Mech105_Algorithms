testFunc = @(x) x.^3-8; 

x_left = 1;
x_right = 3;
[root, fx, ea, iter] = falsePosition(testFunc, x_left, x_right)


function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

if nargin<3
    error('3 input arguments required') 
elseif nargin < 4 
    es = 0.0001;
    maxit=200;
elseif nargin < 5 
    maxit = 200;
elseif nargin > 6 
    error('Too many inputs')
end
if func(xl)*func(xu)>=0
    error('No sign change:Either bounds do not bracket root or brackets are too spaced out')
end
if xu <= xl 
    error('Wrong bracket order')
end

%sees if xl or xu are roots
if func(xl) == 0
    root = xl
    fx = func(xl)
    ea = 0
elseif func(xu) == 0
    root = xu
    fx = func(xu)
    ea = 0
end

%Begins false position
xrold = xl;
iter = 0 ;
ea = 100;
while ea > es
    if iter > maxit
        root = xr
        fx = func(xr)
        iter = iter - 1
        disp('Hit max iterations')
        break
    end
 xr = xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)));
 if func(xr) ~=0
    if func(xr)*func(xu)<0
        xl = xr;
        iter = iter + 1;
    elseif func(xr)*func(xu)>0
        xu = xr;
        iter = iter + 1;
    else
        disp('xr is a root')
    end
    ea = abs((xr - xrold)*100/xr);
    xrold = xr;
end
if func(xr)==0
    root = xr
    fx = func(xr)
    ea = 0
end
iter = iter +1;
end
if ea < es
    root = xr
    fx = func(xr)
end
end