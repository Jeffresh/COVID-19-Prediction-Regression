clear all, close all;

data = readtable("assets/COVID-19.csv");

 
active_res_china = getData(data, "China",97/147);
[active_res_spain, confirmed_res, death_res, recovered_res, date] = getData(data, "Spain");

x = dates2num(date);
y = active_res_china;
forecast = 30;


model = train(x,y);
x=[1:x(end)+forecast];
prediction = evalue(model,x);

newdate = getVectorDates(date,forecast);

plot(date,active_res_china,'b'), hold on
plot(newdate,prediction,'g')


