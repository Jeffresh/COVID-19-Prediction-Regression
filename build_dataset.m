function [X,Y] = build_dataset(rawdata, country, normalization)
%BUILD_DATASET Summary of this function goes here
%   Detailed explanation goes here

[active_res, confirmed_res, death_res, recovered_res, date] = getData(rawdata,country ,normalization);
redate = day(date-min(date(:)))+1;

X = [confirmed_res, death_res, recovered_res, redate];
Y = active_res;

end

