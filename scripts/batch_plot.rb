#!/usr/bin/env ruby
list = `ls ../data/data_sizes_*.csv`.split("\n").map{|l| l.strip.gsub(".csv","")}

list.each do | fname |
fname = fname.split("/").last

puts "Plot #{fname}"
	puts `cat plot_datasets_by_sizes.gnu | sed -e "s/INPUTFILE/#{fname}/" -e "s/OUTPUTFILE/#{fname}/" | gnuplot`
	puts `cat plot_vars_by_records.gnu | sed -e "s/INPUTFILE/#{fname}/" -e "s/OUTPUTFILE/#{fname}/" | gnuplot`
end

list = `ls ../data/available_data_for_*.csv`.split("\n").map{|l| l.strip.gsub(".csv","")}

list.each do | fname |
fname = fname.split("/").last
	puts "Plot #{fname}"
	puts `cat plot.gnu | sed -e "s/INPUTFILE/#{fname}/" -e "s/OUTPUTFILE/#{fname}/" | gnuplot`

end
