function b13=b13(J1,J,r,r1,z,h)
ff10=f10(J1,J,h,z);
b13=-(ff10+2*ff10*log(r/r1));