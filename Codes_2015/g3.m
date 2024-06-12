function g3=g3(K3,J,h,lmt,z,Tbi)
syms et
F=th1(Tbi,lmt,et,h).*(K3./J).*exp(lmt.*(et./h+0.5));
g3=int(F,-0.5*h,z);