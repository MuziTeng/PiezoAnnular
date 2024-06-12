

function out = Fun_ff() 
out.f1 = @ff_f1;
out.barf1 = @ff_barf1;
out.f2 = @ff_f2;
out.barf2 = @ff_barf2;
end


function barf = ff_barf1(FGM,n,z) 
syms et; 
f = ff_f1(FGM,n,et);
barf = double( int(f,-0.5*FGM.h,z)); 
end

function f = ff_f1(FGM,n,z) 
MC=Fun_mc;
c11 = MC.c11(FGM,z);
c12 = MC.c12(FGM,z);
c13 = MC.c13(FGM,z);
c33 = MC.x33(FGM,z);
c44 = MC.c44(FGM,z);

e31 = MC.e31(FGM,z);
e33 = MC.e33(FGM,z);
e15 = MC.e15(FGM,z);
x11 = MC.x11(FGM,z);
x33 = MC.x33(FGM,z);

f =  (c13.*x33 +e31.*e33)/(e33.^2+ x33.*c33).*z.^n;
end


function barf = ff_barf2(FGM,n,z) 
syms et; 
f = ff_f2(FGM,n,et);
barf = double( int(f,-0.5*FGM.h,z)); 
end


function f = ff_f2(FGM,n,z) 
MC=Fun_mc;
c11 = MC.c11(FGM,z);
c12 = MC.c12(FGM,z);
c13 = MC.c13(FGM,z);
c33 = MC.x33(FGM,z);
c44 = MC.c44(FGM,z);

e31 = MC.e31(FGM,z);
e33 = MC.e33(FGM,z);
e15 = MC.e15(FGM,z);
x11 = MC.x11(FGM,z);
x33 = MC.x33(FGM,z);

f =  (e33.*c13 - c33.*e31)/(e33.^2+ x33.*c33).*z.^n;
end
