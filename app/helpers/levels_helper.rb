module LevelsHelper
	def current_name_level(level)
    	if(level==1)
    		"Facil"
    	elsif level==2
    		"Intermedio"
    	elsif level==3
    		"Avanzado"
    	end
  	end
end
