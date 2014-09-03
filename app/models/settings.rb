class Settings
	def hostname
		@hostname ||= Socket.gethostname.upcase
	end
	def hostip
		@ip_address = Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address
	end
	def environment
		Rails.env
	end
end