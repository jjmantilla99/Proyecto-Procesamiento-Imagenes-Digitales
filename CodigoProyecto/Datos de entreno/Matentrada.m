clear all
clc
load targetsvc.mat
load simpletargets.mat
load vecimg001.mat
x1 = double(Y1);
load vecimg002.mat
x2 = double(Y1);
load vecimg003.mat
x3 = double(Y1);
X = [x1,x2,x3];
clear Y1 x1 x2 x3;
