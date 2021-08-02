function [MEP_Onset_time,MEP_Onset_index] = MEP_Finder(EMG_wave,time,MCD,n)

    MCD_array = repelem(MCD,n);
    
    for k = 1:length(EMG_wave - n)
        
        EMG_sec = EMG_wave(k:k+n-1);

        Logical = EMG_sec > MCD_array; %This gives us array of length n, 
        % now we need to find the equivalent EMG_sec value to the true
        % logical statements
        
        MEP_Onset_time = EMG(Logical);
        MEP_Onset_index = time(MEP_Onset_time);
        
    end
        
        
    end
end

    

