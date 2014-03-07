import math
a = open("input.txt").read().splitlines()
#a=[None]*32
#def f(x):
#	return bin(int( 50 * math.sin(100*x) ))
	#                ^ this is input function

#for i in range(0,32):
#	a[i]= f(math.pi*i/1600) 
	 # sampling at regular interval
	#f(math.pi*i/1600)
a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29],a[30],a[31] = a[0],a[16],a[8],a[24],a[4],a[20],a[12],a[28],a[2],a[18],a[10],a[26],a[6],a[22],a[14],a[30],a[1],a[17],a[9],a[25],a[5],a[21],a[13],a[29],a[3],a[19],a[11],a[27],a[7],a[23],a[15],a[31]

for i in range(0,32):
	print a[i]