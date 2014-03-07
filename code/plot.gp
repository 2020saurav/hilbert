set autoscale
unset log
unset label
set xtic auto
set ytic auto

set title "Hilbert Transform"
set xlabel "Time (t) (ms)"
set ylabel "H(f(t))"

set xr [0.000:62.000]
set yr [-90:90]


set term gif
set output "final.gif"

plot "hilbert.dat" using 2:1 with linespoints
