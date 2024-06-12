function S0=S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt,h,z)
syms et
ff10=f10(J1,J,h,et);
ff20=f20(J2,J,h,et);
ff30=f30(J3,J,h,et);
RR0=R0(c11,c13,e31,q31,J1,J2,J3,J,lmt,h,et);
F=RR0./(c44.*exp(lmt.*(et./h+0.5)))-ff10-e15.*ff20/c44-q15*ff30/c44;
S0=int(F,-0.5*h,z);