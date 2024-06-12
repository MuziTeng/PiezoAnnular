function L81=L81(c11,c12,r,lmt,h)
syms et
F=et.*((c12-c11)*r.^(-2)).*exp(lmt.*(et./h+0.5));
L81=int(F,-0.5*h,0.5*h);
