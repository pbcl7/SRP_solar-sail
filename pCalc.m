function px = pCalc(delta_l,delta_r,alpha)
px = -((cos(alpha+delta_l)).^2).*cos(delta_l)+(((cos(alpha-delta_r)).^2).*cos(delta_r));
% px = -(((sin(alpha+delta_l)).^2).*sin(delta_l))+(((sin(alpha+delta_r)).^2).*sin(delta_r));