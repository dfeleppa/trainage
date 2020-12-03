Rails.application.routes.draw do
  resources :movements
  root 'coaches#home'
  
  get 'coach/signup' => 'coaches#new'
  post 'coach/signup' => 'coaches#create'

  get 'coach/login' => 'sessions#new'
  get 'coach/login' => 'sessions#create'

  get 'coach/index' => 'coaches#index'

  delete '/logout' => 'sessions#destroy'

  resources :workouts
  resources :sessions
  resources :athletes
  resources :coaches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
