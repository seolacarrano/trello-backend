Rails.application.routes.draw do
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  resources :boards do
    resources :lists do
      resources :items do
      end
    end
  end
end

