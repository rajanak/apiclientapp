class PagesController < ApplicationController
  def index
    @page = access_token.get("/api/v1/websites/9d44d4da-5385-470e-a472-fa409dfa483c").parsed
binding.pry
  end

  def create
    access_token.post("/api/v1/websites/9d44d4da-5385-470e-a472-fa409dfa483c", params: {page: {name: params[:name]}})
    binding.pry
    redirect_to root_url
  end
end

