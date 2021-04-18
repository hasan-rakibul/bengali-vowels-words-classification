import os
path1="./WData_all/"		#Main folder
j=1
for file in os.listdir(path1):
	path2=path1+"Word"+str(j)+"/"		#for accessing subfolders, files present in subfolders
	i=1
	for filename in os.listdir(path2):
		dst="Word"+str(j)+"_"+str(i)+".wav"		#New filename
		src=path2+filename
		dst=path2+dst

		os.rename(src,dst)
		i+=1
	j+=1
