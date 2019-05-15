set datafile separator ","
set xtic auto
set ytic auto
set title 'Datasets by Variables and Records'
set ylabel 'Variables'
set xlabel 'Records (millions)'
set term png
set out '../output/OUTPUTFILE.png'
plot '../data/INPUTFILE.csv' every::1 u ($3/1000000):2 with points pt 7
set term svg
set out '../output/OUTPUTFILE.svg'
plot '../data/INPUTFILE.csv' every::1 u ($3/1000000):2 with points pt 7
set title 'Variables by Log of Number of Records'
set logscale x
set xlabel 'Records (log)'
set term png
set out '../output/OUTPUTFILE_log_records.png'
plot '../data/INPUTFILE.csv' every::1 u 3:2 with points pt 7
set term svg
set out '../output/OUTPUTFILE_log_records.svg'
plot '../data/INPUTFILE.csv' every::1 u 3:2 with points pt 7

