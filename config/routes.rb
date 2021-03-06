Rails.application.routes.draw do
  devise_for :users , controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:show] do
    resources :issues do
      resources :questions, only: [:show]
      resources :engineers, only: [:index, :show]
      post 'send_email', to: 'issues#send_email'
    end
    resources :apartments do
      member do
        post "invite"
      end
    end
  end

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




