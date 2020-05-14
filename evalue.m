function prediction = evalue(model,x)
%EVALUE Summary of this function goes here
%   Detailed explanation goes here
prediction = model.A*x.*exp(model.B*x + model.C*x.^2);

end

