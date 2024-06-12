function out = Fun_mc() 
out.c11 = @mc_c11;
out.c12 = @mc_c12;
out.c13 = @mc_c13;
out.c33 = @mc_c33;
out.c44 = @mc_c44;

out.e31 = @mc_e31;
out.e33 = @mc_e33;
out.e15 = @mc_e15;

out.x11 = @mc_x11;
out.x33 = @mc_x33;
end



function Y = mc_c11(FGM,z)
X= FGM.c11;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end

function Y = mc_c12(FGM,z)
X= FGM.c12;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end


function Y = mc_c13(FGM,z)
X= FGM.c13;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end

function Y = mc_c33(FGM,z)
X= FGM.c33;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end


function Y = mc_c44(FGM,z)
X= FGM.c44;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end


function Y = mc_e31(FGM,z)
X= FGM.e31;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end

function Y = mc_e33(FGM,z)
X= FGM.e33;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end

function Y = mc_e15(FGM,z)
X= FGM.e15;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end


function Y = mc_x11(FGM,z)
X= FGM.x11;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end

function Y = mc_x33(FGM,z)
X= FGM.x33;
Y=X.*exp(FGM.lambda.*(z./FGM.h+0.5));
end
