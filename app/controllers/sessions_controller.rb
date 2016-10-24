class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == "" || session[:name].nil?
      route = '/login'
    else
      route = '/'
    end
    redirect_to route
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

end
