import os
i=1
path1="./WData_all/Formant/"

for i in range(1,8):
	newpath=path1+"Formant"+str(i)
	if not os.path.exists(newpath):
		os.makedirs(newpath)