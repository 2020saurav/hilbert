def abhilak(i,k):
	t = i%(2**(k-1))
	if(t<(2**(k-2))):
		return i+2**(k-2)
	else:
		return i - 2**(k-2)
for i in range(0,32):
	if(i<abhilak(i,4)):
		print i, abhilak(i,4)
