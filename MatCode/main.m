clear all
clc

IniPara


MC= Fun_mc;
FF= Fun_ff
% 
% 
% c11 = MC.c11(FGM,0:0.1:1)

z = -0.1:0.00001:1;
a1 = FF.f1(FGM,0,z);
sum(a1)*0.00001
inta1 = FF.barf1(FGM,0,1)
