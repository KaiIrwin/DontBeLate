Rails.application.routes.draw do
  root "articles#home"

  post "articles/creat" => "articles#creat"

  get "/home", to: "articles#home"
  get "/makethedeal", to: "articles#dealinput"
  get "/thisisyourdeal", to: "articles#apipart"
  get "/thisiswhatyougot", to: "articles#result"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
