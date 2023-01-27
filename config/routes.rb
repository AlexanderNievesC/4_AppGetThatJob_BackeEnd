Rails.application.routes.draw do
    resources :users

    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
end
