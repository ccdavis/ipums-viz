set xtic auto
set ytic auto
set title 'Data Availability by Dataset and IPUMS Variable'
set ylabel 'Variables'
set xlabel 'Datasets (oldest to newest)'
set term png
set out '../output/OUTPUTFILE.png'
plot '../data/INPUTFILE.csv' every::1 u 2:1 with points pt 7
set term svg
set out '../output/OUTPUTFILE.svg'
plot '../data/INPUTFILE.csv' every::1 u 2:1 with points pt 7
