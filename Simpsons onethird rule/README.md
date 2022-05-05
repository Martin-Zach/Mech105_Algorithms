# Simpson's 1/3 Rule #
This function integrates data using Simpson's 1/3 rule.
It checks if there are odd number of intervals and if that is true, the function will use the trapezoidal rule for the last interval.
This funcion will
* Error check that the inputs are the same length
* Error check that the x input is equally spaced
* Warn the user (not an error, just a warning) if the trapezoidal rule has to be used on the last interval

## Inputs ##
* x - the vector of equally spaced independent variable
* y - the vector of function values with respect to x
## Outputs ##
I - the numerical integral calculated
## Limitations ##
* The inputs must be the same length
* The inputs must be more than one value
* The x input must be evenly spaced

Simpson's 1/3 rule is second order accurate
