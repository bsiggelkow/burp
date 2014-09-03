class WelcomeController < ApplicationController

	def index
		@start_time = Time.now
		@settings = Settings.new
		render layout: false
	end

end
