# a script to compress files:
#2010 august 

require 'zip/zip'

unless ARGV[0]
	puts "Usage: ruby compress.rb <file_name>"
	exit
end


file = ARGV[0]
	puts "Enter zip file name:"
	zip = gets.chomp
	Zip::ZipFile.open(zip, true) do |zipfile|
		begin
			puts "#{file} is being added to the archive"
			zipfile.add(file,file)
		rescue Exception => e
			puts "Error adding to zipfile: \n #{e}"
		end
		end

