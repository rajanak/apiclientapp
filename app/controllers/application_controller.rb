class ApplicationController < ActionController::Base
  protect_from_forgery
  # auth = request.env['omniauth.auth']
  # render json: auth.to_json

  rescue_from OAuth2::Error do |exception|
    if exception.response.status = 401
      session[:access_token] = nil
    end
  end

  private

  def oauth_client
    @oauth_client ||= OAuth2::Client.new("883ba5255be96546ca7371c7e1e7a67263afe515c46ddd389c588597fe6d681b", "0cfd009ca695396e215eb02512ca2f836e51b52e6a20ee811da865e937c85e8e", site: "http://localhost:3001")
 binding.pry
  end

  def access_token
    if session[:access_token]
      @access_token ||= OAuth2::AccessToken.new(@oauth_client, session[:access_token])
    end
  end
end
