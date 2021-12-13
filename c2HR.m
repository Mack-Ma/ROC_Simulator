function [HR, zHR]=c2HR(Model, c, param)

switch Model
    case 'EVSD'
        HR=1-normcdf(c, param(1), 1);
    case 'UVSD'
        HR=1-normcdf(c, param(1), param(2));
    case 'DPSD'
        HR=param(2)+(1-param(2))*(1-normcdf(c, param(1), 1));
    case 'DPSD2'
        HR=param(2)+(1-param(2))*(1-normcdf(c, param(1), 1));
end
zHR=norminv(HR);

end