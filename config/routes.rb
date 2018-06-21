Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/help',    to: 'static_pages#help'
get  '/about',   to: 'static_pages#about'
get  '/contact', to: 'static_pages#contact'
get  '/signup',  to: 'users#new'
post '/signup',  to: 'users#create'

root 'application#hello'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'

  resources :users, only: [:show, :new, :create]
  resources :schedules, only: [:show, :new, :create, :update, :edit, :destroy]
  resources :habits, only: [:show, :new, :create, :edit, :update] #we're using all of them right now but this can be refactored

end
