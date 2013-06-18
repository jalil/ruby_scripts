require 'rubygems'  
require 'xmpp4r-simple'

username = ARGV[0]
password = ARGV[1]

timer = 1
while timer < 10
messenger = Jabber::Simple.new(username,password)

	messenger.received_messages do |msg|
		puts "Received message from #{msg.from}: #{msg.body}"
	end
	timer = timer + 1
puts timer
end

