function model = train(x,y)
%TRAIN Summary of this function goes here
%   Detailed explanation goes here



yp = log((y./x));
A = [x.^2, x ,ones(size(x))];

sol = inv(A'*A)*(A'*yp); 

model.C = sol(1); model.B = sol(2); model.A = exp(sol(3));



end

