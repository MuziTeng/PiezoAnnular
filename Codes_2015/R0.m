function R0=R0(c11,c13,e31,q31,J1,J2,J3,J,lmt,h,z)
syms et
F=(c11-(c13*J1./J)-(e31*J2./J)-(q31*J3./J)).*exp(lmt.*(et./h+0.5));
R0=int(F,-0.5*h,z);