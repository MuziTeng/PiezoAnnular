function g2=g2(K2,J,h,lmt,z,Tbi)
syms et
F=th1(Tbi,lmt,et,h).*(K2./J).*exp(lmt.*(et./h+0.5));
g2=int(F,-0.5*h,z);