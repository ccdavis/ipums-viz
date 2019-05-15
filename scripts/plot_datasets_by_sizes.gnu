set datafile separator ","
set xtic auto
set ytic auto
set title 'Datasets by Variables and Records'
set ylabel 'Size in megabytes'
set xlabel 'Datasets'
set term png
set out 'OUTPUTFILE_datasets.png'
plot '< sort -n -k 4 -t , INPUTFILE.csv' every::1 u 4 with points pt 7
set term svg
set out 'OUTPUTFILE_datasets.svg'
plot '< sort -n -k 4 -t , INPUTFILE.csv' every::1 u 4 with points pt 7
set logscale y
set xlabel 'Datasets'
set ylabel 'Log(size in megabytes)'
set term png
set out 'OUTPUTFILE_log_datasets_size.png'
plot '< sort -n -k 4 -t , INPUTFILE.csv' every::1 u 4 with points pt 7
set term svg
set out 'OUTPUTFILE_log_datasets_size.svg'
plot '< sort -n -k 4 -t , INPUTFILE.csv' every::1 u 4 with points pt 7

