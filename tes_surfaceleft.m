function tes_surfaceleft()
i = 0;
for alpha = 0:0.01:2*pi
    i = i+1;
    Zl(i,:)=pCalc(0:0.01:pi/2,0,alpha);
%     j = 0;
%     for delta = 0:0.01:pi/2
%         j = j+1;
%         Zl(i,j) = pCalc(delta,0,alpha);
% %         Zl(i,j) = -(((cos(alpha+delta))^2)*cos(delta))+(cos(alpha))^2;
%     end
end
disp('Left surface generated');
% [alpha,delta] = meshgrid(0:0.1:2*pi,0:0.1:pi/2);
% figure();
% surf(alpha,delta,Zl')
% xlabel('\alpha (rad)')
% ylabel('\delta_l (rad)')
% zlabel('P')
% title('Sun Angle and Vane Deflection Correction Factor', 'Color', 'b')
save('datazl.mat','Zl');