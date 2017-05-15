Rails.application.routes.draw do
  root to: redirect('/auth/doorkeeper')

  get '/auth/:provider/callback' => 'application#authentication_callback'
  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
