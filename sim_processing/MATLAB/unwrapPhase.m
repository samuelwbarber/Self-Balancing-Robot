% Function to correct phase wrapping
function unwrappedPhase = unwrapPhase(phaseData)
    unwrappedPhase = phaseData;
    for i = 2:length(phaseData)
        if (phaseData(i) - phaseData(i-1)) > 180
            unwrappedPhase(i:end) = unwrappedPhase(i:end) - 360;
        elseif (phaseData(i) - phaseData(i-1)) < -180
            unwrappedPhase(i:end) = unwrappedPhase(i:end) + 360;
        end
    end
end