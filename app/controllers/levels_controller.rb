class LevelsController < ApplicationController
	def new 
		@level = Level.new
	end
	def create
		@level = Level.new(level_params)
    	
    	if @level.save
      		#sign_in @level
      		flash[:success] = "Nivel Creado"
      		redirect_to levels_url
    	else
      		render 'new'
    	end
	end

	def show 
		@level = Level.find(params[:id])
	end

	def index
		@levels = Level.all
	end

	def edit
    	@level = Level.find(params[:id])
  	end

  	def update
	    @level = Level.find(params[:id])

	    if @level.update_attributes(level_params)
	      flash[:success] = "Cambios Guardados"
	      redirect_to @level
    	else
      		render 'edit'
    	end
  	end
  	def destroy
	    level.find(params[:id]).destroy
	    flash[:success] = "Nivel eliminado."
	    redirect_to levels_url
	end
	private

    def level_params
      params.require(:level).permit(:title,:description,:dificulty)
    end
end
