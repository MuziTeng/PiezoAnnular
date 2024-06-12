function b21=b21(J2,J,r,r1,z,h)
ff21=f21(J2,J,h,z);
b21=4*ff21+4*ff21*log(r/r1);