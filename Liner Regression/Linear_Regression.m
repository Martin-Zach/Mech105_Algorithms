x = [1 2 3 4 5 6]
y = [1 2 1.3 3.75 2.5 100]
if length(x)~=length(y)
    error('inputs are not the same length')
end
%sort data points
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder);
%Create quartiles and interquartile range
n = length(x);
Q1 = sortedY(floor((n+1)/4));
Q3 = sortedY(floor((3*n+3)/4));
IQR = Q3-Q1;
outliers  = IQR*1.5;
lengthx = length(x);
lengthy = length(x);
%remove outliers
i = 1;
while i <= lengthy
    if Q1 - outliers > sortedY(i) || outliers + Q3 < sortedY(i)
        sortedX(i) = [];
        sortedY(i) = [];
        i = i - 1;
        lengthx = lengthx -1;
        lengthy = lengthy -1;
    end
    i = i+1;
end
fX = sortedX;
fY = sortedY;
%Linear Regression 
n = length(fX);
xy = fX.*fY;
sumXY = sum(xy);
sumY = sum(fY);
sumX = sum(fX);
xsq = sum((fX).^2);

slope = ((n*sumXY)-(sumX*sumY))/((n*xsq)-(sumX)^2);
intercept = (sum(fY)-(slope*sum(fX)))/length(fX)
y = slope*fX + intercept

%cacl R^2

%calc average
Yav = mean(fY);
Xav = mean(fX);
%calc sum of squares 

SStot = sum((fY-Yav).^2)
SSres = sum((fY-y).^2)
%R^2
Rsquared = 1-(SSres/SStot)

