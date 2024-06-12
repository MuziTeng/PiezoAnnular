function L11=L11(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r,r1,lmt,h)
syms et
SS1=S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt,h,et);
F=et.*(-(3*c11+c12).*et+4*c13.*J1.*et*(1+log(r./r1))./J+4*e31*J2.*et*(1+log(r./r1))./J...
    +4*q31*J3.*et*(1+log(r./r1))./J-2*(c11+c12).*et*log(r./r1)+4*(c12-c11)*SS1*r.^(-2)).*exp(lmt.*(et./h+0.5));
L11=int(F,-0.5*h,0.5*h);
