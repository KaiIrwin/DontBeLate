Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/destroy'
  root "articles#home"

  post "articles/creat" => "articles#creat"

  get "/home", to: "articles#home"
  get "/makethedeal", to: "articles#dealinput"
  get "/thisisyourdeal", to: "articles#apipart"
  get "/thisiswhatyougot", to: "articles#result"
end
