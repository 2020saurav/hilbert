for stage in range (2,7):
	boxstart=0
	boxsize=2**(stage-2)
	while(boxsize+boxstart<32):
		for j in range(0,boxsize):
			print boxstart +j
		boxstart=boxstart + 2**(stage-1)
