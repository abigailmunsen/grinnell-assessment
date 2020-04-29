Rails.application.routes.draw do
  get "/", to: "homepage#home", as: "root"
  get "/about", to: "homepage#about"
  get "/contact", to: "homepage#contact"
end
