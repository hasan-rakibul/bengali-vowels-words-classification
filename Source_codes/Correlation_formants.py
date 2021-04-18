
import pandas as pd
import numpy as np
import os
from scipy.stats import variation



for k in range(1,9):   #number of variation or trial....WData_v1, v2 
    for j in range(1,8):  #number of word in each variation
        DATA_PATH="./WData_v"+str(k)+"/Formant/Formant"+str(j)+"/"
        i=0
        for speechfile in os.listdir(DATA_PATH):  #accessing each formant file
            data = pd.read_csv(DATA_PATH+speechfile, delim_whitespace=True,header=None,names=["time","F1","F2","F3","F4","F5"],dtype=np.float64,na_values="--undefined--")
            formantMean=data.mean(axis=0) #rows to rows mean
            if i==0:
                meanAll=formantMean
                i+=1
            else:
                meanAll=pd.concat([meanAll,formantMean],axis=1) #add columnwise

        cov=variation(meanAll,axis=1)
    
        np.save('./Result/COV/COV_trial'+str(k)+'_word_'+str(j)+'.npy',cov) #file saved as ....<trial_number>...<word_number>
