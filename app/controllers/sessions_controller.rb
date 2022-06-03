class SessionsController < ApplicationController
  def new
  end

  def create
    #se pregunta si existe email en el modelo usuario antes de crear el User
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logueado correctamente :D"
    else
      redirect_to new_session_path, notice: "No existe cuenta XD"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "Adios!... Ha cerrado la sesion :("
  end
end
