unless ENV['LOGNAME'] == 'root'
	puts
	puts "Only ROOT can run this script !!"
	puts
		exit
end
Dir.chdir("/var/log/")

for i in Dir.entries(Dir.pwd)
	File.unlink(i) if i.include? "gz"
 	          next
end
puts
puts "Log Cleaner done!!!!!!!!!"
puts


