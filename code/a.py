def f(i, stage):
	t = i%(2**stage)
	if(t < (2**(stage-1))):
		k=0
	else:
		k = (2**(5-stage)) * (t-(2**(stage-1)));
	print k


for i in range(0,32):
	f(i,4)


