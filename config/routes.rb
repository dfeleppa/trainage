Rails.application.routes.draw do
  root 'coaches#index'
  
  get 'coach/signup' => 'coaches#new'
  post 'coach/signup' => 'coaches#create'

  get 'coach/login' => 'sessions#new'
  get 'coach/login' => 'sessions#create'

  resources :workouts
  resources :sessions
  resources :athletes
  resources :coaches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
