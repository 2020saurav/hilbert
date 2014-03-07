def abhilak(i,k):
	t = i%(2**(k-1))
	if(t<(2**(k-2))):
		return i+2**(k-2)
	else:
		return i - 2**(k-2)


for st in range(2,7):
	for i in range(0,32):
		if(i<abhilak(i,st)):
			print "butterfly but",st,"_",i,"(st",st,"r[",i,"],", "st",st,"c[",i,"],", "st",st,"r[",abhilak(i,st),"],", "st",st,"c[",abhilak(i,st),"],", st,",",i,",",abhilak(i,st),",","wst",st+1,"r[",i,"],", "wst",st+1,"c[",i,"],", "wst",st+1,"r[",abhilak(i,st),"],", "wst",st+1,"c[",abhilak(i,st),"]);";