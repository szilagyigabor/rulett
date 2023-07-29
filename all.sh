#!/bin/sh
cargo build

target\debug\rulett.exe -b straight-up -r 1000
target\debug\rulett.exe -b split -r 1000
target\debug\rulett.exe -b street -r 1000
target\debug\rulett.exe -b corner -r 1000
target\debug\rulett.exe -b line -r 1000
target\debug\rulett.exe -b column -r 1000
target\debug\rulett.exe -b dozen -r 1000
target\debug\rulett.exe -b color -r 1000
target\debug\rulett.exe -b even-odd -r 1000
target\debug\rulett.exe -b low-high -r 1000

target\debug\rulett.exe -b straight-up -r 10000
target\debug\rulett.exe -b split -r 10000
target\debug\rulett.exe -b street -r 10000
target\debug\rulett.exe -b corner -r 10000
target\debug\rulett.exe -b line -r 10000
target\debug\rulett.exe -b column -r 10000
target\debug\rulett.exe -b dozen -r 10000
target\debug\rulett.exe -b color -r 10000
target\debug\rulett.exe -b even-odd -r 10000
target\debug\rulett.exe -b low-high -r 10000

target\debug\rulett.exe -b straight-up -r 100000
target\debug\rulett.exe -b split -r 100000
target\debug\rulett.exe -b street -r 100000
target\debug\rulett.exe -b corner -r 100000
target\debug\rulett.exe -b line -r 100000
target\debug\rulett.exe -b column -r 100000
target\debug\rulett.exe -b dozen -r 100000
target\debug\rulett.exe -b color -r 100000
target\debug\rulett.exe -b even-odd -r 100000
target\debug\rulett.exe -b low-high -r 100000

target\debug\rulett.exe -b straight-up -r 1000000
target\debug\rulett.exe -b split -r 1000000
target\debug\rulett.exe -b street -r 1000000
target\debug\rulett.exe -b corner -r 1000000
target\debug\rulett.exe -b line -r 1000000
target\debug\rulett.exe -b column -r 1000000
target\debug\rulett.exe -b dozen -r 1000000
target\debug\rulett.exe -b color -r 1000000
target\debug\rulett.exe -b even-odd -r 1000000
target\debug\rulett.exe -b low-high -r 1000000

target\debug\rulett.exe -b straight-up -r 10000000
target\debug\rulett.exe -b split -r 10000000
target\debug\rulett.exe -b street -r 10000000
target\debug\rulett.exe -b corner -r 10000000
target\debug\rulett.exe -b line -r 10000000
target\debug\rulett.exe -b column -r 10000000
target\debug\rulett.exe -b dozen -r 10000000
target\debug\rulett.exe -b color -r 10000000
target\debug\rulett.exe -b even-odd -r 10000000
target\debug\rulett.exe -b low-high -r 10000000

gnuplot plotter.gp

pdfunite penz_ido_1000.pdf penz_ido_10000.pdf penz_ido_100000.pdf penz_ido_1000000.pdf penz_ido_10000000.pdf penz_ido.pdf
