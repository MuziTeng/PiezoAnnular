function L50=L50(c11,c12,r,lmt,h)
syms et
F=((c11-c12).*et.*r.^(-2)).*exp(lmt.*(et./h+0.5));
L50=int(F,-0.5*h,0.5*h);