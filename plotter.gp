set terminal pdfcairo size 30cm,15cm
set xlabel "Kör"
set ylabel "Pénz egység"
set key outside vertical top right

set xtics 0,200,1000
set title "Pénz az idő függvényében (1000 kör)"
set output "penz_ido_1000.pdf"
plot "StraightUp_1000.txt" u 1 w l t "Straight Up",\
	"Split_1000.txt" u 1 w l t "Split",\
	"Street_1000.txt" u 1 w l t "Street",\
	"Corner_1000.txt" u 1 w l t "Corner",\
	"Line_1000.txt" u 1 w l t "Line",\
	"Column_1000.txt" u 1 w l t "Column",\
	"Dozen_1000.txt" u 1 w l t "Dozen",\
	"Color_1000.txt" u 1 w l t "Color",\
	"EvenOdd_1000.txt" u 1 w l t "Even-Odd",\
	"LowHigh_1000.txt" u 1 w l t "Low-High"
	
set xtics 0,2000,10000
set title "Pénz az idő függvényében (10000 kör)"
set output "penz_ido_10000.pdf"
plot "StraightUp_10000.txt" u 1 w l t "Straight Up",\
	"Split_10000.txt" u 1 w l t "Split",\
	"Street_10000.txt" u 1 w l t "Street",\
	"Corner_10000.txt" u 1 w l t "Corner",\
	"Line_10000.txt" u 1 w l t "Line",\
	"Column_10000.txt" u 1 w l t "Column",\
	"Dozen_10000.txt" u 1 w l t "Dozen",\
	"Color_10000.txt" u 1 w l t "Color",\
	"EvenOdd_10000.txt" u 1 w l t "Even-Odd",\
	"LowHigh_10000.txt" u 1 w l t "Low-High"
	
set xtics 0,20000,100000
set title "Pénz az idő függvényében (100000 kör)"
set output "penz_ido_100000.pdf"
plot "StraightUp_100000.txt" u 1 w l t "Straight Up",\
	"Split_100000.txt" u 1 w l t "Split",\
	"Street_100000.txt" u 1 w l t "Street",\
	"Corner_100000.txt" u 1 w l t "Corner",\
	"Line_100000.txt" u 1 w l t "Line",\
	"Column_100000.txt" u 1 w l t "Column",\
	"Dozen_100000.txt" u 1 w l t "Dozen",\
	"Color_100000.txt" u 1 w l t "Color",\
	"EvenOdd_100000.txt" u 1 w l t "Even-Odd",\
	"LowHigh_100000.txt" u 1 w l t "Low-High"
	