Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'sessions/create'
  
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  
  get 'welcome/index'
  root 'welcome#index'
  
  get 'recipe/add' => 'recipe#add'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
