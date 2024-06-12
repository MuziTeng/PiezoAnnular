function b11=b11(J1,J,r,r1,z,h)
ff11=f11(J1,J,h,z);
b11=4*ff11+4*ff11*log(r/r1)+(r^2)*log(r/r1);
