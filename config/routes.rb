InternationalesSaaleschwimmen::Application.routes.draw do

  root "login#index"

  resources :login, only: [:index, :create] 

  resources :user, only: [:index]
  get "/user/urkunde", to: "user#urkunde"
end
