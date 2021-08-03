function [MEP_Onset_time,MEP_Onset_index] = CON_Finder(EMG_wave,time,MCD,n,start,up_down)
    
    if ~exist('n','var')
        n = 1;
    end
    
    if ~exist('start','var')
        start=1;
    end
    
    EMG_wave = EMG_wave(start:end,:);
    MCD_array = repelem(MCD,n);
    
    if up_down == strcmp('up')
        try
            for k = 1:(length(EMG_wave))

                EMG_sec = [EMG_wave(k:k+n-1)]';

                Logical = EMG_sec > MCD; 
                Log_sum = sum(Logical);

                if Log_sum == n
                   %first_num = EMG_sec(1,1);
                    MEP_Onset_index(k) = k;
                    MEP_Onset_time(k) = time(k);

                end


            end
        catch
            for k = 1:(length(EMG_wave)-n)

                EMG_sec = [EMG_wave(k:k+n-1)]';

                Logical = EMG_sec > MCD; 
                Log_sum = sum(Logical);

                if Log_sum == n
                   %first_num = EMG_sec(1,1);
                    MEP_Onset_index(k) = k;
                    MEP_Onset_time(k) = time(k);

                end


            end
        end
MEP_Onset_index = MEP_Onset_index';
MEP_Onset_time = MEP_Onset_time';
ind = find(sum(MEP_Onset_index,2)==0) ;
MEP_Onset_index(ind,:)=[];
ind_2 = find(sum(MEP_Onset_time,2)==0);
MEP_Onset_time(ind_2,:)=[];

else
    try
        for k = 1:(length(EMG_wave))

            EMG_sec = [EMG_wave(k:k+n-1)]';

            Logical = EMG_sec < MCD; 
            Log_sum = sum(Logical);

            if Log_sum == n
               %first_num = EMG_sec(1,1);
                MEP_Onset_index(k) = k;
                MEP_Onset_time(k) = time(k);

            end
            
            
        end
    catch
        for k = 1:(length(EMG_wave)-n)

            EMG_sec = [EMG_wave(k:k+n-1)]';

            Logical = EMG_sec < MCD; 
            Log_sum = sum(Logical);

            if Log_sum == n
               %first_num = EMG_sec(1,1);
                MEP_Onset_index(k) = k;
                MEP_Onset_time(k) = time(k);

            end
            
            
        end
        
    end
        
end

MEP_Onset_index = MEP_Onset_index';
MEP_Onset_time = MEP_Onset_time';
ind = find(sum(MEP_Onset_index,2)==0) ;
MEP_Onset_index(ind,:)=[];
ind_2 = find(sum(MEP_Onset_time,2)==0);
MEP_Onset_time(ind_2,:)=[];

end
  




