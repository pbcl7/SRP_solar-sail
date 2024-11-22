% clear all ; close all
tes_surfaceleft();
tes_surfaceright();
load datazl; load datazr;

alphaNow = pi/8;
pNow = 0.05;
%pNow is pReq

alphaList = 0:0.01:2*pi;
idxList = alphaList <= alphaNow;
idx = find(idxList,1,'last');

delta = rad2deg(0:0.01:pi/2);

ZalphaLNow = Zl(idx,:);
ZalphaRNow = Zr(idx,:);

% select data accordingly
% if pNow < 0
%     O3 = find(ZalphaRNow <0,1);
%     figure();
%     plot(delta(:,O3:end), ZalphaRNow(:,O3:end))
%     xlabel('delta')
%     ylabel('ZalphaRNow')
% else
%     O = max(ZalphaLNow);
%     O2 = find(ZalphaLNow == O);
%     figure();
%     plot(delta(:,1:O2), ZalphaLNow(:,1:O2));
%     xlabel('delta')
%     ylabel('ZalphaLNow')
% end
    
figure();
plot(delta, ZalphaLNow,'*');
grid on; hold on;
plot(delta, ZalphaRNow,'*');
xlabel('\delta (degree)')
ylabel('pNow') 
title(['\alpha: ' num2str(rad2deg(alphaNow)) char(176)]);
legend({'\delta_L','\delta_R'})
% plot(0:0.01:pi/2,pCalc(0:0.01:pi/2,0,alphaList(idx)));


% figure();
% [~,idsL] = sort(ZalphaLNow);
% [~,idsR] = sort(ZalphaRNow);
% plot(ZalphaLNow(idsL),delta(idsL));
% grid on; hold on;
% plot(ZalphaRNow(idsR),delta(idsR));
% xlabel('ZalphaNow')
% ylabel('delta')
% legend({'\delta_L','\delta_R'})

deltaLNow = pFinder(pNow,ZalphaLNow,0,alphaNow);
deltaRNow = pFinder(-pNow,ZalphaRNow,1,alphaNow);
disp('deltaLNow =')
disp(deltaLNow);
disp('deltaRNow =')
disp(deltaRNow);

% figure();
% plot(deltaLNow,ZalphaLNow)
% title(['alpha: ' num2str(rad2deg(alphaNow))]);

pL = pCalc(deltaLNow,0,alphaList(idx));
pR = pCalc(0,deltaRNow,alphaList(idx));
disp('pL =')
disp(pL)
disp('pR =')
disp(pR)