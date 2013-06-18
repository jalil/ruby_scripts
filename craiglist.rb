#august 16-2010
#Craiglist  2 city search
require 'rubygems'
require 'nokogiri'
require 'open-uri'

search_list = 
  {
	'community' => 'ccc',
	'event'     => 'eee',
	'gigs'      => 'ggg',    
	'housing'   => 'hhh',
	'jobs'      => 'jjj',
	'personals' => 'ppp',
        'resume'    => 'res',
        'services' => 'bbb',
        'for sale' => 'sss',


}



search_item = ARGV[1]  ||  "ruby"
search_city = ARGV[0]  ||  "losangeles"
search_category = ARGV[2] || "jobs"

retval = search_list[search_category]
ARGV[0].each do |city|
	city_1,city_2 = city.split(",")
	city_list = Array.new
	city_list <<
end
doc = Nokogiri::HTML(open("http://#{search_city}.craigslist.org/search/#{retval}?query=#{search_item}"))
puts
puts "#" * 40
puts
puts "Below are the list of #{search_item.upcase} in #{search_city}"
puts
puts "#" * 40
puts
doc.css('p > a').each do |link|
   puts link.content
end


end

