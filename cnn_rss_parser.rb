require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

#source = "http://rss.cnn.com/rss/cnn_us.rss"
content = ""


cnn = %w(
	http://rss.cnn.com/rss/cnn_topstories.rss
	http://rss.cnn.com/rss/cnn_world.rss 
	http://rss.cnn.com/rss/cnn_us.rss
)

threads = []

for page in cnn
	
	threads << Thread.new(page) { |my_page|
		
		open(my_page) do |info|
        		content = info.read
		end

	rss = RSS::Parser.parse(content,false)

	puts "\n\nTITLE: #{rss.channel.title}"
	puts "DESCRIPTION: #{rss.channel.description}"
	puts "LINK: #{rss.channel.link}"
	puts "PUBLICATION DATE: #{rss.channel.date} \n\n"
	puts "PUBLICATION LANGUAGE: #{rss.channel.language} \n\n"


	rss.items.size.times do |line|
		break if line==5
       		puts "#{line}) #{rss.items[line].title}"
        	puts "#{rss.items[line].pubDate}"
       		puts "---" * 20

        	desc  =  "#{rss.items[line].description}"
       		puts "#{desc.split('<div')[0]}"
        	puts "#{rss.items[line].link}"
        	puts

	end
      
 	 puts

