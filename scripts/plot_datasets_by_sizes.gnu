set datafile separator ","
set xtic auto
set ytic auto


#Change colors of elements in Gnuplot

# change a color of border.
set border lw 3 lc rgb "gray"

# change text colors of  tics
set xtics textcolor rgb "gray"
set ytics textcolor rgb "gray"

# change text colors of labels
set xlabel "X" textcolor rgb "white"
set ylabel "Y" textcolor rgb "white"

# change a text color of key
set key textcolor rgb "yellow"



# Set background color
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"#000000" behind


#set key title "Extract Time by Requested Variables Across 3MM Records" tc rgb "#FFFFFF"    inside


set title 'Dataset sizes in Megabytes' tc rgb "#FFFFFF"

set ylabel 'Size in megabytes'
set xlabel 'Datasets'
set term png
set out '../output/OUTPUTFILE_datasets.png'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7
set term svg
set out '../output/OUTPUTFILE_datasets.svg'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7

set title 'Log of Dataset Sizes in Megabytes'' tc rgb "#FFFFFF"
set logscale y
set xlabel 'Datasets'
set ylabel 'Log(size in megabytes)'
set term png
set out '../output/OUTPUTFILE_log_datasets_size.png'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7
set term svg
set out '../output/OUTPUTFILE_log_datasets_size.svg'
plot '< sort -n -k 4 -t , ../data/INPUTFILE.csv' every::1 u 4 with points pt 7

