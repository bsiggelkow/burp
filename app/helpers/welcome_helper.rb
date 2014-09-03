module WelcomeHelper
	def render_time
		Time.now - @start_time
	end
end
