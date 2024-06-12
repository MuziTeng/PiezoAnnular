function L61=L61(c11,c12,c44,e15,r,lmt,h)
syms et
F=et.*(((c11-c12)*e15.*et*r.^(-2))./c44).*exp(lmt.*(et./h+0.5));
L61=int(F,-0.5*h,0.5*h);