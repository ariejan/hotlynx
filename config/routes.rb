Hotlynx::Application.routes.draw do
  resources :links

  root to: 'home#index'


end
