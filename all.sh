#!/bin/sh
cargo build --release

target/release/rulett -b straight-up -r 1000
target/release/rulett -b split -r 1000
target/release/rulett -b street -r 1000
target/release/rulett -b corner -r 1000
target/release/rulett -b line -r 1000
target/release/rulett -b column -r 1000
target/release/rulett -b dozen -r 1000
target/release/rulett -b color -r 1000
target/release/rulett -b even-odd -r 1000
target/release/rulett -b low-high -r 1000

target/release/rulett -b straight-up -r 10000
target/release/rulett -b split -r 10000
target/release/rulett -b street -r 10000
target/release/rulett -b corner -r 10000
target/release/rulett -b line -r 10000
target/release/rulett -b column -r 10000
target/release/rulett -b dozen -r 10000
target/release/rulett -b color -r 10000
target/release/rulett -b even-odd -r 10000
target/release/rulett -b low-high -r 10000

target/release/rulett -b straight-up -r 100000
target/release/rulett -b split -r 100000
target/release/rulett -b street -r 100000
target/release/rulett -b corner -r 100000
target/release/rulett -b line -r 100000
target/release/rulett -b column -r 100000
target/release/rulett -b dozen -r 100000
target/release/rulett -b color -r 100000
target/release/rulett -b even-odd -r 100000
target/release/rulett -b low-high -r 100000

target/release/rulett -b straight-up -r 1000000
target/release/rulett -b split -r 1000000
target/release/rulett -b street -r 1000000
target/release/rulett -b corner -r 1000000
target/release/rulett -b line -r 1000000
target/release/rulett -b column -r 1000000
target/release/rulett -b dozen -r 1000000
target/release/rulett -b color -r 1000000
target/release/rulett -b even-odd -r 1000000
target/release/rulett -b low-high -r 1000000

target/release/rulett -b straight-up -r 10000000
target/release/rulett -b split -r 10000000
target/release/rulett -b street -r 10000000
target/release/rulett -b corner -r 10000000
target/release/rulett -b line -r 10000000
target/release/rulett -b column -r 10000000
target/release/rulett -b dozen -r 10000000
target/release/rulett -b color -r 10000000
target/release/rulett -b even-odd -r 10000000
target/release/rulett -b low-high -r 10000000

target/release/rulett -b straight-up -r 100000000
target/release/rulett -b split -r 100000000
target/release/rulett -b street -r 100000000
target/release/rulett -b corner -r 100000000
target/release/rulett -b line -r 100000000
target/release/rulett -b column -r 100000000
target/release/rulett -b dozen -r 100000000
target/release/rulett -b color -r 100000000
target/release/rulett -b even-odd -r 100000000
target/release/rulett -b low-high -r 100000000

gnuplot plotter.gp

rm *.txt

pdfunite penz_ido_1000.pdf penz_ido_10000.pdf penz_ido_100000.pdf penz_ido_1000000.pdf penz_ido_10000000.pdf penz_ido_100000000.pdf penz_ido.pdf

rm *0.pdf
