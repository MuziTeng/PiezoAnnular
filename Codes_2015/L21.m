function L21=L21(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt,h)
syms et
F=et.*(-2*(c11+c12).*et+4*c13*J1.*et./J+4*e31*J2.*et./J+4*q31*J3*et./J).*exp(lmt.*(et./h+0.5));
L21=int(F,-0.5*h,0.5*h);
