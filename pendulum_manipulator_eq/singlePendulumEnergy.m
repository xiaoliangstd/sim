function [energy,kinetic,potential] = singlePendulumEnergy(th,w,m,g,l)
%SINGLEPENDULUMENERGY
%    [ENERGY,KINETIC,POTENTIAL] = SINGLEPENDULUMENERGY(TH,W,M,G,L)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    10-Oct-2018 23:06:32

t2 = l.^2;
t3 = w.^2;
t4 = m.*t2.*t3.*(1.0./2.0);
t5 = cos(th);
t6 = t5-1.0;
energy = t4-w.*(1.0./2.0)-g.*l.*m.*t6;
if nargout > 1
    kinetic = t4;
end
if nargout > 2
    potential = -g.*l.*m.*t6;
end