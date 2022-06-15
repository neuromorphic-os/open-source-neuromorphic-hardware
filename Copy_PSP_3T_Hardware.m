function [v]= Copy_PSP_3T_Hardware(Vw,t,firingTime)

% riseTime=firingTime + 7e-6;
riseTime=7e-6;
b=7e-6;

if t<=firingTime
    v=0;
elseif (t>firingTime) && (t-firingTime <= riseTime)
    % rising part of the function
    v = ((-2174693877.55 .* Vw) + 616530612.24 ).*(t-firingTime).^2 + ((30445.71 .*Vw) -8631.43).*(t-firingTime) + 0.02121;       
else
    % decaying part of the function    
    v = ((0.10656.*Vw)-0.0305).*exp(-((t-firingTime)-b).^2/(2.*(6.41522e-6.*Vw)+7.29669e-6).^2)+0.0215;    
end












