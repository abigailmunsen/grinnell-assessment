Rails.application.routes.draw do
  resources :departments
  resources :instgoals
  get "/", to: "homepage#home", as: "root"
  get "/about", to: "homepage#about"
  get "/contact", to: "homepage#contact"
end
