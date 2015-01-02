KendoGva::Application.routes.draw do

  # devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  root "pages#home"
  get "home", to: "pages#home", as: "home"
  # get "inside", to: "pages#inside", as: "inside"
  # get "/contact", to: "pages#contact", as: "contact"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"

  resources :posts, only: [:index, :show]


  ActiveAdmin.routes(self)

  # namespace :admin do
  #   root "base#index"
  #   resources :users
  #   get "posts/drafts", to: "posts#drafts", as: "posts_drafts"
  #   get "posts/dashboard", to: "posts#dashboard", as: "posts_dashboard"
  #   resources :posts
  # end

end
