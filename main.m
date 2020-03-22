clear all, close all;

data = readtable("assets/COVID-19.csv");

%%

[Xtrain, Ytrain] = build_dataset(data,"China"); 

[Xtest, Ytest] = build_dataset(data,"Spain", 97/147,1); 




