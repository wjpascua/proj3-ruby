Proj3::Application.routes.draw do
  
  get "user/index"

  get "pages/login"

  get "create_surveys/index"

  get "results/displayChart"

  match "pages/login" => "pages#login", :via => [:get, :post]
  
  match "create_surveys/index" => "create_surveys#index", :via => [:get, :post]
  match "create_surveys/questions" => "create_surveys#questions"
end
