function [FAR, zFAR]=c2FAR(Model, c, param)

switch Model
    case 'EVSD'
        FAR=1-normcdf(c, 0, 1);
    case 'UVSD'
        FAR=1-normcdf(c, 0, 1);
    case 'DPSD'
        FAR=1-normcdf(c, 0, 1);
    case 'DPSD2'
        FAR=(1-param(3))*(1-normcdf(c, 0, 1));
end
zFAR=norminv(FAR);

end