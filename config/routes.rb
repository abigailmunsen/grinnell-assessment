Rails.application.routes.draw do
  get "/", to: "homepage#home", as: "root"
  get "/about", to: "homepage#about"
  get "/contact", to: "homepage#contact"
  get "/inst_goals/:goalNum" => "inst_goals#show"
  get "/inst_goals" => "inst_goals#index"

  resources :inst_goals, :dept_goals, :departments, :course_goals, :courses
end
