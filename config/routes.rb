Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users, controllers: {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  resources :elections, only: [] do
    resource :vote, only: [:create, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
