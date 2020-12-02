Rails.application.routes.draw do
  root 'coaches#index'
  
  get 'signup' => 'coach#new'
  post 'signup' => 'coach#create'

  get 'login' => 'sessions#new'
  get 'login' => 'sessions#create'

  resources :workouts
  resources :sessions
  resources :athletes
  resources :coaches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
