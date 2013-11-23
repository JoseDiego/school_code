class CoursesController < ApplicationController
	def index 
		@levels = Level.all
	end
end
