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

set title 'Data Availability by Dataset and IPUMS Variable'   tc rgb "#FFFFFF"   


set ylabel 'Variables'
set xlabel 'Datasets (oldest to newest)'
set term png
set out '../output/OUTPUTFILE.png'
plot '../data/INPUTFILE.csv' every::1 u 2:1 with points pt 7 t "Available Data"
set term svg
set out '../output/OUTPUTFILE.svg'
plot '../data/INPUTFILE.csv' every::1 u 2:1 with points pt 7 t "Available Data"
