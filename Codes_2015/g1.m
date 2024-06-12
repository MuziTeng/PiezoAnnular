function g1=g1(K1,J,h,lmt,z,Tbi)
syms et
F=th1(Tbi,lmt,et,h).*(K1./J).*exp(lmt.*(et./h+0.5));
g1=int(F,-0.5*h,z);