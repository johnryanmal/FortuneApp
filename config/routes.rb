Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/fortune", controller: "example", action: "read_fortune"
  get "/lottery", controller: "example", action: "read_lottery"
  get "/visits", controller: "example", action: "get_visits"
end
