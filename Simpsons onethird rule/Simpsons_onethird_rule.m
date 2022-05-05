clear;clc
time = [140 141 142 143 144 145 146 147 148 149 ];                       % Carbon Dioxide Evolution Rate (g/hour)
CO2evo = [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75 ] ; % Oxygen Uptake Rate (g/hour)    
OxUp = [15.59 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 13.68 ];

% Using your function in part 1, and the data table below, calculate the total
% amount of carbon dioxide produced and oxygen consumed during fermentation.
% Compare to the value that the MATLAB function trapz() computes. You would
% expect the solutions it be similar but not identical

lengthtime = size(time); 
lengthCO2 = size(CO2evo);
lengthOxUp = size(OxUp);
if lengthtime~=lengthCO2 | lengthtime~=lengthOxUp
    error('inputs are not same length')
end


f = CO2evo;
for i = 1:2
if (-1)^lengthtime(1,2) == 1   % spacing is even
    if i == 1
    h = time(lengthtime(1,2))-time(1);
    a = f(1);
    b = f((lengthtime(1,2)/2));
    c = f(lengthtime(1,2));
    simp_C02evo = h*(a + 4*b + c)/6
    else
    h = time(lengthtime(1,2))-time(1);
    a = f(1);
    b = f((lengthtime(1,2)/2));
    c = f(lengthtime(1,2));
    simp_Oxup = h*(a + 4*b + c)/6
    end
end
if (-1)^lengthtime(1,2) == -1  %spacing is odd
    disp('Trapezoidal rule ahs to be used on last interval')
    if i ==1
    h = time(lengthtime(1,2)-1)-time(1);
    a = f(1);
    b = f(((lengthtime(1,2)-1)/2));
    c = f(lengthtime(1,2)-1);
    simp_CO2evo = h*(a + 4*b + c)/6;
    trap_C02evo = (f(lengthtime(1,2)-1) + f(lengthtime(1,2)))/2;
    I_C02evo = simp_CO2evo + trap_C02evo
  
       else
    h = time(lengthtime(1,2)-1)-time(1);
    a = f(1);
    b = f(((lengthtime(1,2)-1)/2));
    c = f(lengthtime(1,2)-1);
    simp_Oxup = h*(a + 4*b + c)/6;
    trap_Oxup = (f(lengthtime(1,2)-1) + f(lengthtime(1,2)))/2;
    I_OxUp = simp_Oxup + trap_Oxup
   
    break
    end
end
f = OxUp;
end
