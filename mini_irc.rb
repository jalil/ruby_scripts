# mini ruby IRC server
require 'set'
require 'socket'


class Channel 
	def initialize(server,name)
		@server  = server
		@name    = name
		@topic   = String.new
		@members = Set.new
		@operator= Set.new	
		@voiced  =Set.new


	def get_name
		return @name
	end

	def get_topic
		return @topic
	end
		
	def set_topic
		@topic = topic
	end

	def get_members
		return members
	end
	
	def  add_members(client)
		members.add(client)
	end




class Client
	valid_nickname = 
	valid_channel_name = 

	
	def initialize(server,socket)
		@server  =  server
		@socket  =  socket
		@read_buffer = ""
		@write_buffer = ""
		@timestamp  =  Time.now
		@sent_ping  =  false
		@nick_name  =  
		@user  =  
		@host, @port = socket.
		@real_name  =  	
		@channels =  {}
		
			if server.password
				@handle_command  =  pass_handler
			else
				@handle_command =  registration_hander
			end


		end


		def get_socket
			@socket
		end
			
		def get_timestamp
			@timestamp
		end
			
		def get_nick_name
			@nick_name
		end

		def set_nick_name(name)
			@nick_name  = name
		end

		def get_user
			return @user
		end
	
		def get_host
			return @host
		end

			
		def get_prefix
			return @nick_name , @user , @host
		end

		def get_real_name
			@real_name	
		end	

		def check_aliveness
			now 	
		end


		def write_queuesize
			return write_buffer.length
		end

		def pass_handler(command, arguments)
			@server  =  server
			if command == "PASS"
				if arguments.length == 0
			

