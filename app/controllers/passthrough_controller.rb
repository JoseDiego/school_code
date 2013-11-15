class PassthroughController < ApplicationController
	def index
		if signed_in?
			if current_user.admin?
				path = index_path
			else
				path = courses_path
			end
		else
			path = index_path
		end

	    #path = case current_user.role
	    #  when 'project_manager'
	    #    some_path
	    #  when 'client'
	    #    some_other_path
	    #  else
	        # If you want to raise an exception or have a default root for users without roles
	    #end
    	redirect_to path     
  	end
end
