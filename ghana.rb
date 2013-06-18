require 'rubygems'
require 'simple-rss'
require 'open-uri'



rss = SimpleRSS.parse open('http://www.modernghana.com/rssfeed/news.xml?cat_id=1&gender=28')

puts rss.channel.title
puts rss.channel.link

rss.items.size.times do |line|
                break if line==10
                puts "#{line}) #{rss.items[line].title}"
                #puts "#{rss.items[line].title}"
                puts "#{rss.items[line].pubDate}"
                puts "---" * 20
                #puts "#{rss.items[line].description}"
                # desc  =  "#{rss.items[line].description}"
                #puts "#{desc.split('&')[0]}"
                puts "#{rss.items[line].link}"
                puts
                puts

end

