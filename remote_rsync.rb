#!/usr/local/bin/ruby
#to copy my rails files to remote machines 

require 'ping'

host = ARGV[0]
host  ||= "192.168.0.102"

local_directory = ARGV[1]
local_directory ||= Dir.pwd

remote_host_directory = ARGV[2]
remote_host_directory  ||= "/home/jalil/Genki/"


if Ping.pingecho(host,4)
	Dir.chdir(local_directory)
	`rsync -avh * #{host}:#{remote_host_directory}`
	puts 
	puts "#" * 30
	puts "Files done copying"
else
	puts 
	puts "#" * 30
	puts "#{host} is not alive.\n\nPlease check to make sure #{host} is up"
	puts 
	puts "#" * 30
	puts 
end



