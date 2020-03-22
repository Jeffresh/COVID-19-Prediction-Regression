function [X,Y] = build_dataset(rawdata, country, normalization, feature)
%BUILD_DATASET Summary of this function goes here
%   Detailed explanation goes here


if nargin < 3
    normalization = 1;
end

[active_res, confirmed_res, death_res, recovered_res, date] = getData(rawdata,country ,normalization);
redate = day(date-min(date(:)))+1;

X = [confirmed_res, death_res, recovered_res, redate];
Y = active_res;

if nargin == 4
    X = X(:,feature);
    
    
end

