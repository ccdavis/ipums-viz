set datafile separator ","
set xtic auto
set ytic auto
set title 'Datasets by Variables and Records'
set ylabel 'Variables'
set xlabel 'Records (millions)'
set term png
set out 'OUTPUTFILE.png'
plot 'INPUTFILE.csv' every::1 u ($3/1000000):2 with points pt 7
set term svg
set out 'OUTPUTFILE.svg'
plot 'INPUTFILE.csv' every::1 u ($3/1000000):2 with points pt 7
set logscale x
set xlabel 'Records (log)'
set term png
set out 'OUTPUTFILE_log_records.png'
plot 'INPUTFILE.csv' every::1 u 3:2 with points pt 7
set term svg
set out 'OUTPUTFILE_log_records.svg'
plot 'INPUTFILE.csv' every::1 u 3:2 with points pt 7

