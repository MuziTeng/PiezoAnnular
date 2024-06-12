function L80=L80(c11,c12,r,lmt,h)
syms et
F=((c12-c11)*r.^(-2)).*exp(lmt.*(et./h+0.5));
L80=int(F,-0.5*h,0.5*h);
