class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash[:error] = 'Revisa tu correo o password, alguno de ellos es invalido' # Not quite right!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end