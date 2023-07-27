set terminal pdfcairo
set output "penz_ido.pdf"
set title "Pénz az idő függvényében"
set xlabel "Kör"
set ylabel "Pénz egység"
#set xr [-0.010239:0.215020]
plot "penztarca.txt" u 1 w l