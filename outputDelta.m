function deltaOut = outputDelta(pReq, alphaIn, deltaL, deltaR)

alphaIn = rad2deg(alphaIn);
if (alphaIn > 68 && alphaIn < 110) ||  (alphaIn > 250 && alphaIn < 290)
    if pReq < 0
        deltaOut = [deltaL 0];
    else
        deltaOut = [0 deltaR];
    end
else
    if pReq > 0
        deltaOut = [deltaL 0];
    else
        deltaOut = [0 deltaR];
    end
end
