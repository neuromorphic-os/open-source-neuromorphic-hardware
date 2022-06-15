function [v]=PSP_t_SRM_model(w, t, firingTime, tau)

if (t-firingTime>0)
%         v=w*exp(-(t-firingTime)/tau);
        v=w*(t/tau)*exp(-(t-firingTime)/tau);
else    
    v=0;
end


