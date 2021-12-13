%% Get hit rates & false-alarm rates for ROC

function [HR, FAR, zHR, zFAR]=getROC(Model, param)

Nsample=1000;
c=linspace(-3,3,Nsample+1);
[HR, zHR]=c2HR(Model, c, param);
[FAR, zFAR]=c2FAR(Model, c, param);

end