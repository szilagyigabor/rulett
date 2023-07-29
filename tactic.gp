set terminal pdfcairo size 30cm,15cm
set xlabel "Kör"
set ylabel "Pénz egység"
set key outside vertical top right

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
set title "Pénz az idő függvényében, Peti taktikája (1000 kör)"
set output "penz_ido_tactic_1000.pdf"
plot "Color_tactic_1000_a.txt" u 1:2 w l t "A",\
     "Color_tactic_1000_b.txt" u 1:2 w l t "B",\
     "Color_tactic_1000_c.txt" u 1:2 w l t "C",\
     "Color_tactic_1000_d.txt" u 1:2 w l t "D",\
     "Color_tactic_1000_e.txt" u 1:2 w l t "E",\
     "Color_tactic_1000_f.txt" u 1:2 w l t "F",\
     "Color_tactic_1000_g.txt" u 1:2 w l t "G",\
     "Color_tactic_1000_h.txt" u 1:2 w l t "H",\
     "Color_tactic_1000_i.txt" u 1:2 w l t "I",\
     "Color_tactic_1000_j.txt" u 1:2 w l t "J"
    
set xtics 0,2000,10000
set title "Pénz az idő függvényében, Peti taktikája (10000 kör)"
set output "penz_ido_tactic_10000.pdf"
plot "Color_tactic_10000_a.txt" u 1:2 w l t "A",\
     "Color_tactic_10000_b.txt" u 1:2 w l t "B",\
     "Color_tactic_10000_c.txt" u 1:2 w l t "C",\
     "Color_tactic_10000_d.txt" u 1:2 w l t "D",\
     "Color_tactic_10000_e.txt" u 1:2 w l t "E",\
     "Color_tactic_10000_f.txt" u 1:2 w l t "F",\
     "Color_tactic_10000_g.txt" u 1:2 w l t "G",\
     "Color_tactic_10000_h.txt" u 1:2 w l t "H",\
     "Color_tactic_10000_i.txt" u 1:2 w l t "I",\
     "Color_tactic_10000_j.txt" u 1:2 w l t "J"
    
set xtics 0,20000,100000
set title "Pénz az idő függvényében, Peti taktikája (100000 kör)"
set output "penz_ido_tactic_100000.pdf"
plot "Color_tactic_100000_a.txt" u 1:2 w l t "A",\
     "Color_tactic_100000_b.txt" u 1:2 w l t "B",\
     "Color_tactic_100000_c.txt" u 1:2 w l t "C",\
     "Color_tactic_100000_d.txt" u 1:2 w l t "D",\
     "Color_tactic_100000_e.txt" u 1:2 w l t "E",\
     "Color_tactic_100000_f.txt" u 1:2 w l t "F",\
     "Color_tactic_100000_g.txt" u 1:2 w l t "G",\
     "Color_tactic_100000_h.txt" u 1:2 w l t "H",\
     "Color_tactic_100000_i.txt" u 1:2 w l t "I",\
     "Color_tactic_100000_j.txt" u 1:2 w l t "J"
    
set xtics 0,200000,1000000
set title "Pénz az idő függvényében, Peti taktikája (1000000 kör)"
set output "penz_ido_tactic_1000000.pdf"
plot "Color_tactic_1000000_a.txt" u 1:2 w l t "A",\
     "Color_tactic_1000000_b.txt" u 1:2 w l t "B",\
     "Color_tactic_1000000_c.txt" u 1:2 w l t "C",\
     "Color_tactic_1000000_d.txt" u 1:2 w l t "D",\
     "Color_tactic_1000000_e.txt" u 1:2 w l t "E",\
     "Color_tactic_1000000_f.txt" u 1:2 w l t "F",\
     "Color_tactic_1000000_g.txt" u 1:2 w l t "G",\
     "Color_tactic_1000000_h.txt" u 1:2 w l t "H",\
     "Color_tactic_1000000_i.txt" u 1:2 w l t "I",\
     "Color_tactic_1000000_j.txt" u 1:2 w l t "J"
    
set xtics 0,2000000,10000000
set title "Pénz az idő függvényében, Peti taktikája (10000000 kör)"
set output "penz_ido_tactic_10000000.pdf"
plot "Color_tactic_10000000_a.txt" u 1:2 w l t "A",\
     "Color_tactic_10000000_b.txt" u 1:2 w l t "B",\
     "Color_tactic_10000000_c.txt" u 1:2 w l t "C",\
     "Color_tactic_10000000_d.txt" u 1:2 w l t "D",\
     "Color_tactic_10000000_e.txt" u 1:2 w l t "E",\
     "Color_tactic_10000000_f.txt" u 1:2 w l t "F",\
     "Color_tactic_10000000_g.txt" u 1:2 w l t "G",\
     "Color_tactic_10000000_h.txt" u 1:2 w l t "H",\
     "Color_tactic_10000000_i.txt" u 1:2 w l t "I",\
     "Color_tactic_10000000_j.txt" u 1:2 w l t "J"
    
set xtics 0,20000000,100000000
set title "Pénz az idő függvényében, Peti taktikája (100000000 kör)"
set output "penz_ido_tactic_100000000.pdf"
plot "Color_tactic_100000000_a.txt" u 1:2 w l t "A",\
     "Color_tactic_100000000_b.txt" u 1:2 w l t "B",\
     "Color_tactic_100000000_c.txt" u 1:2 w l t "C",\
     "Color_tactic_100000000_d.txt" u 1:2 w l t "D",\
     "Color_tactic_100000000_e.txt" u 1:2 w l t "E",\
     "Color_tactic_100000000_f.txt" u 1:2 w l t "F",\
     "Color_tactic_100000000_g.txt" u 1:2 w l t "G",\
     "Color_tactic_100000000_h.txt" u 1:2 w l t "H",\
     "Color_tactic_100000000_i.txt" u 1:2 w l t "I",\
     "Color_tactic_100000000_j.txt" u 1:2 w l t "J"
    
