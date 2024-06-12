function S1=S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt,h,z)
syms et
ff11=f11(J1,J,h,et);
ff21=f21(J2,J,h,et);
ff31=f31(J3,J,h,et);
RR1=R1(c11,c13,e31,q31,J1,J2,J3,J,lmt,h,et);
F=RR1./(c44.*exp(lmt.*(et./h+0.5)))-ff11-e15*ff21/c44-q15*ff31/c44;
S1=int(F,-0.5*h,z);