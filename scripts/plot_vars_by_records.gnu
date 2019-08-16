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


set title 'Datasets by Variables and Records' tc rgb "#FFFFFF"
set ylabel 'Variables'
set xlabel 'Records (millions)'
set term png
set out '../output/OUTPUTFILE.png'
plot '../data/INPUTFILE.csv' every::1 u ($3/1000000):2 with points pt 7 t 'Variables X Records'
set term svg
set out '../output/OUTPUTFILE.svg'
plot '../data/INPUTFILE.csv' every::1 u ($3/1000000):2 with points pt 7 t 'Variables X Records'

set title 'Variables by Log of Number of Records' tc rgb "#FFFFFF"
set logscale x
set xlabel 'Records (log)'
set term png
set out '../output/OUTPUTFILE_log_records.png'
plot '../data/INPUTFILE.csv' every::1 u 3:2 with points pt 7 t 'Variables X log(Records)'
set term svg
set out '../output/OUTPUTFILE_log_records.svg'
plot '../data/INPUTFILE.csv' every::1 u 3:2 with points pt 7 t 'Variables X log(Records)'

