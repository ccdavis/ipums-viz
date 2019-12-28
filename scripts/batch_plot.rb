#!/usr/bin/env ruby


require 'csv'


data_dir = File.join(File.expand_path(File.dirname(__FILE__)),"..","data")
	
data_sizes = Dir.entries(data_dir).select{|s| s.include?("data_sizes_live")}

total_records = 0

data_sizes.each do |size_file|
	size_path = File.join(data_dir, size_file)

	data = CSV.read(size_path, headers: true)
	project_records =data.map{|row| row["records"].to_i}.reduce(:+)
	puts "#{size_file} :   #{project_records}"
	total_records += project_records
end

puts "Total: #{total_records}"

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
