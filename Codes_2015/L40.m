function L40=L40(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt,h)
syms et
F=(c11+c12-2*c13*J1./J-2*e31*J2./J-2*q31*J3./J).*exp(lmt.*(et./h+0.5));
L40=int(F,-0.5*h,0.5*h);
