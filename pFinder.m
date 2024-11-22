function deltaNow=pFinder(pReq,pList,indicator,alphaIn)
deltaList = 0:0.01:pi/2;

alphaIn = rad2deg(alphaIn);
if (alphaIn > 68 && alphaIn < 110) ||  (alphaIn > 250 && alphaIn < 290)
    indicator = ~indicator;
end

if indicator == 0    
    idmax = pList >= 0;
    pList = pList(idmax);
    deltaList = deltaList(idmax);
    [~,imax] = max(pList);
    pList = pList(1:imax);
    deltaList = deltaList(1:imax);
    [~,index] = sort(pList);
%     idpos = pList >=0;
%     idpos = idpos(1:imax);
%     pList = pList(idpos);
%     deltaList = deltaList(idpos);
%     [~,index] = sort(pList(idpos));
elseif indicator == 1
    idmin = pList < 0;
    pList = pList(idmin);
    deltaList = deltaList(idmin);
    [~,imin] = min(pList);
    pList = pList(1:imin);
    deltaList = deltaList(1:imin);
    [~,index] = sort(pList);
end

if pReq >= max(pList)
    pReq = max(pList);
elseif pReq <= min(pList)
    pReq = min(pList);
end

deltaNow =interp1(pList(index),deltaList(index),pReq,'linear','extrap');