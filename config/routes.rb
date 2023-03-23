Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # Login 
  post "/login", to: "sessions#create"
  # Stay logged-in
  get "/me", to: "users#show"
  # Logout
  delete "/logout", to: "sessions#destroy"
end
