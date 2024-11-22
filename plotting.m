switch_alpha = switch_alpha*180/pi
figure()
plot(switch_alpha)
ylabel('$\alpha$ (degree)','Interpreter','latex')
title('Attitude Angle')
legend('Switch','Control System')
axis tight
grid on
%%
% switch_work = switch_work*180/pi;
% figure()
% plot(switch_work)
% ylabel('$\alpha$ (degree)','Interpreter','latex')
% title('Attitude Angle')
% set(gca, 'XLimSpec', 'Tight')
% grid on
%%
alpharad_work = alpharad_work*180/pi
figure()
plot(alpharad_work)
ylabel('$\alpha$ (degree)','Interpreter','latex')
title('Attitude Angle')
grid on
set(gca, 'XLimSpec', 'Tight') % to tight x axis

%% 
delta_work = delta_work*180/pi
figure()
plot(delta_work)
ylabel('$\delta$ (degree)','Interpreter','latex')
title('Control Vane Deflection Angle')
legend('Left Vane','Right Vane')
set(gca, 'XLimSpec', 'Tight')
grid on
%%
% % figure()
% % plot(p_work)
% % ylabel('P')
% % title('P Factor')
% % legend('Required P','Calculated P')
% % set(gca, 'XLimSpec', 'Tight')
% % grid on
% % 
% % figure()
% % plot(pCalc_work,'color','r')
% % ylabel('P')
% % title('Calculated P Factor')
% % set(gca, 'XLimSpec', 'Tight')
% % grid on
% % 
% % figure()
% % plot(pReq_work, 'color', 'b')
% % ylabel('P')
% % title('Required P Factor')
% % set(gca, 'XLimSpec', 'Tight')
% % grid on
% % 
% % figure()
% % plot(t_work)
% % ylabel('Torque (Nm)')
% % title('Control Torque')
% % legend('Required Torque','Produced Torque')
% % set(gca, 'XLimSpec', 'Tight')
% % grid on
% % 
% % figure()
% % plot(tProd_work, 'color','red')
% % ylabel('Torque (Nm)')
% % title('Produced Control Torque')
% % set(gca, 'XLimSpec', 'Tight')
% % grid on
% % 
% % figure()
% % plot(tReq_work1, 'color','blue')
% % ylabel('Torque (Nm)')
% % title('Required Control Torque')
% % set(gca, 'XLimSpec', 'Tight')
% % grid on

%%
r_work.Time = r_work.Time / 3600;
r_work.TimeInfo.Units = 'Hours';
figure()
plot(r_work)
ylabel('r (km)')
title('Orbit Radius')
set(gca, 'XLimSpec', 'Tight')
ax = gca();
ax.YAxis.Exponent = 0;
grid on

%%
ecc_work.Time = ecc_work.Time / 3600;
ecc_work.TimeInfo.Units = 'Hours';

figure()
plot(ecc_work)
ylabel('e')
title('Eccentricity')
set(gca, 'XLimSpec', 'Tight')
ax = gca();
ax.YAxis.Exponent = 0;
grid on
%% change to Hour
semimajor_work.Time = semimajor_work.Time / 3600;
semimajor_work.TimeInfo.Units = 'Hours';

figure()
plot(semimajor_work)
ylabel('a (km)')
title('Semi Major Axis')
set(gca, 'XLimSpec', 'Tight')
ax = gca();
ax.YAxis.Exponent = 0;
grid on

%%
figure()
plot(energy_work)
ylabel('Energy (J)')
title('Deflection Energy')
set(gca, 'XLimSpec', 'Tight')
grid on
%%
% figure()
% plot(cmg_work)
% ylabel('Energy (J)')
% title('CMG Energy')
% set(gca, 'XLimSpec', 'Tight')
% grid