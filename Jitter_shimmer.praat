for foldername from 1 to 7	
#Main folders...like Vowel/Word1, Word2...upto 7

for fln from 1 to 40		
#number of files in each subfolders

use_sound$ = "vowel'foldername'_'fln'" 		
#each file name in the subfolder

Read from file... /home/rakibul/WORK/Work/Thesis/Speech_Recognition/Vowel_Word/Vowel_Data/Vowel/vowel'foldername'/'use_sound$'.wav

#filedelete /windows/Praat_resources/Data_file/'use_sound$'_pitch.xls


select Sound 'use_sound$'
To Pitch (ac)... 0 75 15 no 0.03 0.45 0.01 0.35 0.14 600
tot_sample=Get number of frames
s_time=Get time step
for i from 5 to 'tot_sample'
      vtime=('i'-1)*'s_time'
      pitch=Get value at time... 'vtime' Hertz Linear
      fileappend  /home/rakibul/WORK/Work/Thesis/Speech_Recognition/Vowel_Word/Vowel_Data/Jitter_Shimmer/JS'foldername'/'use_sound$'_pitch.xls 'vtime:3'       'pitch:2'   'newline$'
endfor         
      



select Sound 'use_sound$'
plus Pitch 'use_sound$'
To PointProcess (peaks)... yes yes
select PointProcess 'use_sound$'_'use_sound$'
jitter=Get jitter (local)... 0 0 0.0001 0.02 1.3
 

select Sound 'use_sound$'
plus PointProcess 'use_sound$'_'use_sound$'
shimmer=Get shimmer (local)... 0 0 0.0001 0.02 1.3 1.6
print jitter='jitter' , Shimmer='shimmer'



select Sound 'use_sound$'
plus Pitch 'use_sound$'
plus PointProcess 'use_sound$'_'use_sound$'
Remove

endfor
endfor