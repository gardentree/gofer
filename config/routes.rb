Gofer::Engine.routes.draw do
  get '/sessions/new', to: lambda{|env| [404, {}, ["Not Found"]]}, as: 'new_sessions'
  get '/sessions/callback', to: 'sessions#create'
  get '/auth/failure' => 'sessions#failure'
end
