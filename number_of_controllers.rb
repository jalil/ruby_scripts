#tell u how many controllers in a rails app
#!/usr/local/bin/ruby


Dir.chdir("app/controllers/")
number_of_controllers = 0

puts
puts "Controllers "
puts "-------------"
for i in Dir.entries(Dir.pwd)
 	a,b=i.split(/_/)
#	next if a=="application.rb" 
	next if a=~ /\./  or a =~ /^app/
	number_of_controllers= number_of_controllers + 1
	p a.capitalize

end
puts
puts "There are #{number_of_controllers} controllers "
puts

