function tes_surfaceright()
i = 0;
for alpha = 0:0.01:2*pi
    i = i+1;
    Zr(i,:)=pCalc(0,0:0.01:pi/2,alpha);
%     j = 0;
%     for delta = 0:0.01:pi/2
%         j = j+1;
% %         Zr(i,j) = -((cos(alpha))^2)+((cos(alpha-delta))^2)*cos(-delta);
%         Zr(i,j) = pCalc(0,delta,alpha);
%     end
end
disp('Right surface generated');
% [alpha,delta] = meshgrid(0:0.1:2*pi,0:0.1:pi/2);
% figure();
% surf(alpha,delta,Zr')
% xlabel('\alpha (rad)')
% ylabel('\delta_r (rad)')
% zlabel('P')
% title('Sun Angle and Vane Deflection Correction Factor', 'Color', 'b')
save('datazr.mat','Zr');