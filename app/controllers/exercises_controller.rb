class ExercisesController < ApplicationController
	def create 
		@level = Level.find(params[:level_id])
		@exercise = @level.exercises.create(params[:exercise].permit(:title,:description,:solution))
		if @exercise.save
      		flash[:success] = "Ejercicio Creado"
      		redirect_to level_path(@level)
    	else
      		render 'new'
    	end
	end
 
	def destroy
	    @level = Level.find(params[:level_id])
	    @exercise = @level.exercises.find(params[:id])
	    @exercise.destroy
	    redirect_to level_path(@level)
	end

	#private

    #def level_params
     # params[:exercise].permit(:title,:description,:dificulty)
    #end
end
