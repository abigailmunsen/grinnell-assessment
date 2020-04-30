Rails.application.routes.draw do
  resources :departments do
    resources :courses do
      resources :coursegoals
    end
    resources :deptgoals
  end
  resources :instgoals
  get "/", to: "homepage#home", as: "root"
  get "/about", to: "homepage#about"
  get "/contact", to: "homepage#contact"
end
