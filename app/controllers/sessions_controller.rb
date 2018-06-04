class SessionsController < ApplicationController

  def new
  end

  def create
    # puts "params = #{params}"
    if params[:name] && params[:name] != ""
      # puts "success login"
      session[:name] = params[:name]
      # puts "name = #{params[:name]} || #{session[:name]}"
      redirect_to '/'
    else
      # puts "login failure"
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end

end
