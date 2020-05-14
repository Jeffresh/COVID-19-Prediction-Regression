function numVector = dates2num(date)
%DATES2NUM return a ordered numeric vector from a dates vector
%   Detailed explanation goes here

numVector = day(date-min(date(:)))+1;

end

