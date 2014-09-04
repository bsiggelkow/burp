class WelcomeController < ApplicationController

	def index
		@settings = Settings.new
		render layout: false
	end

end
