require 'socket'

file_name = ARGV[0]
file_name ||= "/etc/services"

host_name = ARGV[1]

port_list = Array.new
File.readlines(file_name).each do |f|
     next if f[0]== ?# or f =~/^$/
	service, port = f.match(/(^[a-z][0-9A-Za-z_.+-]*)\s+(\d+)\//).captures
 	#name, port = f.match(/(^[a-z][0-9A-Za-z_.+-]*)\s+(\d+)\//).captures
	port_list << port
	end
	

puts "--------------------------"
puts "Open Ports on #{host_name}"
puts "--------------------------"
for port in 1 .. port_list.size
		begin
			s = TCPsocket.open(host_name,port)
				puts "Port #{port} is open "
				s.close
		rescue Errno::ECONNREFUSED
			next
		end
		
end

