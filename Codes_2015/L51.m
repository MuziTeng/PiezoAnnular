function L51=L51(c11,c12,r,lmt,h)
syms et
F=et.*((c11-c12).*et.*r.^(-2)).*exp(lmt.*(et./h+0.5));
L51=int(F,-0.5*h,0.5*h);