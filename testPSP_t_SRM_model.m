%test PSP SRM model
%[v]=PSP_t_SRM_model(Vw, t, firingTime, tau)

clear; clc;

ft1=0e-3; %ms
tau=6e-3; % ms

% Vw=0.7; 
colour=['r' 'g' 'b' 'y' 'm' 'c' 'k'];
col=0;

t=0:1e-4:70e-3;

% t=0:1e-7:5e-4;

for Vw=0.7:0.1:2.3
    for i=1:length(t)
        v(i)=PSP_t_SRM_model(Vw, t(i), ft1, tau);
    end
    
plot(t, v, colour(mod(col,7)+1))
% axis([-0.5e-6 5e-6 0 3])

hold on;
drawnow;
col=col+1;

end