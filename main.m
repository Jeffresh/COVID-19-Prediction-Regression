clear all, close all;

data = readtable("assets/COVID-19.csv");

 
active_res_china = getData(data, "China",97/147);
[active_res_spain, confirmed_res, death_res, recovered_res, date] = getData(data, "Spain");

x = dates2num(date);
y = active_res_china;


yp = log((y./x));
A = [x.^2, x ,ones(size(x))];

sol = inv(A'*A)*(A'*yp); 

C = sol(1); B = sol(2); A = exp(sol(3));

forecast = 30;

newdate = getVectorDates(date,forecast);
x=[1:x(end)+forecast];

plot(date,active_res_china,'b'), hold on
plot(newdate, A*x.*exp(B*x + C*x.^2),'g')


