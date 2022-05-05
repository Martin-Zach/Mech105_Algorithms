# Linear Regression #
This funcion will perform the following
* remove outliers from a data set 
  * 1.5 times the interquartile range above the third quartile or below the first quartile
* compute a linear regression line and put it into slope intercept form
* compute the R-squared value
## Inputs ##
* x-values od the data set
* y-values of the data set
## Outputs ##
* Filtered x-values (i.e. the input x-values but without the outlier points), sorted from smallest to largest
* Filtered y-valeus (i.e. the input y-values but without the outlier points), sorted from smallest to largest
* Slope from the linear regression f(x) = mx + b
* Intercept from the linear regression  f(x) = mx + b
* R-squared value
## Limitations ##
* number of x and y values must be the same
