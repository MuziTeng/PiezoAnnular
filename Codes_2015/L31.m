function L31=L31(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r,r1,lmt,h)
syms et
SS0=S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt,h,et);
F=et.*(c11-c13*J1*(1+2*log(r./r1))./J-e31*J2*(1+2*log(r./r1))./J-q31*J3*(1+2*log(r./r1))./J...
    +(c11+c12)*log(r./r1)-2*(c12-c11)*SS0*r.^(-2)).*exp(lmt.*(et./h+0.5));
L31=int(F,-0.5*h,0.5*h);
