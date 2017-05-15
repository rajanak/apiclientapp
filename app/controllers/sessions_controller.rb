class SessionsController < ApplicationController
  def create
    binding.pry
    auth = request.env["omniauth.auth"]
    render json: auth.to_json
    session[:access_token] = auth["credentials"]["token"]
    binding.pry
    redirect_to root_url
  end
end
