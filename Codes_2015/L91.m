function L91=L91(c13,e31,q31,K1,K2,K3,J,Tbi,lmt,lmt1,h)
syms et
tt=th1(Tbi,lmt,et,h);
F=et.*(-c13*K1.*tt./J-e31*K2.*tt./J-q31*K3.*tt./J-lmt1*tt).*exp(2*lmt.*(et./h+0.5));
L91=int(F,-0.5*h,0.5*h);