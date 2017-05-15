require File.expand_path('lib/doorkeeper', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :doorkeeper, "883ba5255be96546ca7371c7e1e7a67263afe515c46ddd389c588597fe6d681b", "0cfd009ca695396e215eb02512ca2f836e51b52e6a20ee811da865e937c85e8e"
end