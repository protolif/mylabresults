class SessionsController < ApplicationController
  def create
    user = login(session_params[:username], session_params[:password])
    if user
      redirect_to user, notice: "Login successful!"
    else
      redirect_to root_path, alert: "Invalid username or password."
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "You are now logged out."
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def session_params
    params.permit(:username, :password, :utf8, :authenticity_token, :commit)
  end
end
