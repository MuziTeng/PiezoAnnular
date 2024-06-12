function L70=L70(c11,c12,c44,q15,r,lmt,h)
syms et
F=(((c11-c12)*q15.*et*r.^(-2))./c44).*exp(lmt.*(et./h+0.5));
L70=int(F,-0.5*h,0.5*h);