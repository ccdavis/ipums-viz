set datafile separator ","
set xtic auto
set ytic auto
set title 'Dataset sizes in Megabytes'
set ylabel 'Size in megabytes'
set xlabel 'Datasets'
set term png
set out '../output/OUTPUTFILE_datasets.png'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7
set term svg
set out '../output/OUTPUTFILE_datasets.svg'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7
set title 'Log of Dataset Sizes in Megabytes''
set logscale y
set xlabel 'Datasets'
set ylabel 'Log(size in megabytes)'
set term png
set out '../output/OUTPUTFILE_log_datasets_size.png'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7
set term svg
set out '../output/OUTPUTFILE_log_datasets_size.svg'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7

