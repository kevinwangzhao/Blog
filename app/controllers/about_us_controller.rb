class AboutUsController < ApplicationController

	layout "front_page"

	def index
		@categories = Admin::Category.all
	end
end
