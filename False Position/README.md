# False Position #
This funciont performes root finding on a function using the false position method.
## Required Inputs ##
* test fucnion - function (in terms of x) that you want to find the root of
* lower guess (x_left)
* upper guess (x_right)
* es - the desired relative error
* maxit - the maximum number of ittereations to use

## Outputs ##
* root - the estimated root location
* fx - the function evaluated at the root location
* ea - the approximate relative error (%)
* iter - how many iterations were performed
