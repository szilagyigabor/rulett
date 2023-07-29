set terminal pdfcairo size 30cm,15cm
set xlabel "Kör"
set ylabel "Pénz egység"
set key outside vertical top right
set grid xtics ytics

# magma
set style line  1 lt 1 lc rgb '#000004' # black
set style line  2 lt 1 lc rgb '#1c1044' # dark blue
set style line  3 lt 1 lc rgb '#4f127b' # dark purple
set style line  4 lt 1 lc rgb '#812581' # purple
set style line  5 lt 1 lc rgb '#b5367a' # magenta
set style line  6 lt 1 lc rgb '#e55964' # light red
set style line  7 lt 1 lc rgb '#fb8761' # orange
set style line  8 lt 1 lc rgb '#fec287' # light orange
set style line  9 lt 1 lc rgb '#fbfdbf' # light yellow


set xtics 0,200,1000
set title "Pénz az idő függvényében (1000 kör)"
set output "penz_ido_1000.pdf"
plot "StraightUp_1000.txt" u 1:2 w l t "Straight Up",\
	"Split_1000.txt" u 1:2 w l t "Split",\
	"Street_1000.txt" u 1:2 w l t "Street",\
	"Corner_1000.txt" u 1:2 w l t "Corner",\
	"Line_1000.txt" u 1:2 w l t "Line",\
	"Column_1000.txt" u 1:2 w l t "Column",\
	"Dozen_1000.txt" u 1:2 w l t "Dozen",\
	"Color_1000.txt" u 1:2 w l t "Color",\
	"EvenOdd_1000.txt" u 1:2 w l t "Even-Odd",\
	"LowHigh_1000.txt" u 1:2 w l t "Low-High"
	
set xtics 0,2000,10000
set title "Pénz az idő függvényében (10 000 kör)"
set output "penz_ido_10000.pdf"
plot "StraightUp_10000.txt" u 1:2 w l t "Straight Up",\
	"Split_10000.txt" u 1:2 w l t "Split",\
	"Street_10000.txt" u 1:2 w l t "Street",\
	"Corner_10000.txt" u 1:2 w l t "Corner",\
	"Line_10000.txt" u 1:2 w l t "Line",\
	"Column_10000.txt" u 1:2 w l t "Column",\
	"Dozen_10000.txt" u 1:2 w l t "Dozen",\
	"Color_10000.txt" u 1:2 w l t "Color",\
	"EvenOdd_10000.txt" u 1:2 w l t "Even-Odd",\
	"LowHigh_10000.txt" u 1:2 w l t "Low-High"
	
set xtics 0,20000,100000
set title "Pénz az idő függvényében (100 000 kör)"
set output "penz_ido_100000.pdf"
plot "StraightUp_100000.txt" u 1:2 w l t "Straight Up",\
	"Split_100000.txt" u 1:2 w l t "Split",\
	"Street_100000.txt" u 1:2 w l t "Street",\
	"Corner_100000.txt" u 1:2 w l t "Corner",\
	"Line_100000.txt" u 1:2 w l t "Line",\
	"Column_100000.txt" u 1:2 w l t "Column",\
	"Dozen_100000.txt" u 1:2 w l t "Dozen",\
	"Color_100000.txt" u 1:2 w l t "Color",\
	"EvenOdd_100000.txt" u 1:2 w l t "Even-Odd",\
	"LowHigh_100000.txt" u 1:2 w l t "Low-High"
	
set xtics 0,200000,1000000
set title "Pénz az idő függvényében (1000 000 kör)"
set output "penz_ido_1000000.pdf"
plot "StraightUp_1000000.txt" u 1:2 w l t "Straight Up",\
	"Split_1000000.txt" u 1:2 w l t "Split",\
	"Street_1000000.txt" u 1:2 w l t "Street",\
	"Corner_1000000.txt" u 1:2 w l t "Corner",\
	"Line_1000000.txt" u 1:2 w l t "Line",\
	"Column_1000000.txt" u 1:2 w l t "Column",\
	"Dozen_1000000.txt" u 1:2 w l t "Dozen",\
	"Color_1000000.txt" u 1:2 w l t "Color",\
	"EvenOdd_1000000.txt" u 1:2 w l t "Even-Odd",\
	"LowHigh_1000000.txt" u 1:2 w l t "Low-High"
	
set xtics 0,2000000,10000000
set title "Pénz az idő függvényében (10 000 000 kör)"
set output "penz_ido_10000000.pdf"
plot "StraightUp_10000000.txt" u 1:2 w l t "Straight Up",\
	"Split_10000000.txt" u 1:2 w l t "Split",\
	"Street_10000000.txt" u 1:2 w l t "Street",\
	"Corner_10000000.txt" u 1:2 w l t "Corner",\
	"Line_10000000.txt" u 1:2 w l t "Line",\
	"Column_10000000.txt" u 1:2 w l t "Column",\
	"Dozen_10000000.txt" u 1:2 w l t "Dozen",\
	"Color_10000000.txt" u 1:2 w l t "Color",\
	"EvenOdd_10000000.txt" u 1:2 w l t "Even-Odd",\
	"LowHigh_10000000.txt" u 1:2 w l t "Low-High"
	
set xtics 0,20000000,100000000
set title "Pénz az idő függvényében (100 000 000 kör)"
set output "penz_ido_100000000.pdf"
plot "StraightUp_100000000.txt" u 1:2 w l t "Straight Up",\
	"Split_100000000.txt" u 1:2 w l t "Split",\
	"Street_100000000.txt" u 1:2 w l t "Street",\
	"Corner_100000000.txt" u 1:2 w l t "Corner",\
	"Line_100000000.txt" u 1:2 w l t "Line",\
	"Column_100000000.txt" u 1:2 w l t "Column",\
	"Dozen_100000000.txt" u 1:2 w l t "Dozen",\
	"Color_100000000.txt" u 1:2 w l t "Color",\
	"EvenOdd_100000000.txt" u 1:2 w l t "Even-Odd",\
	"LowHigh_100000000.txt" u 1:2 w l t "Low-High"
	
