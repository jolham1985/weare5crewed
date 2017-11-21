Rails.application.routes.draw do
  devise_for :tenants
  devise_for :landlords

  resources :tenants, only: [:show] do
    resources :issues
  end

  resources :landlords, only: [:show] do
    resources :issues
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
