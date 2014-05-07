class DashboardsController < ApplicationController

	def home
		@chairs = current_user.chairs
	end

end
