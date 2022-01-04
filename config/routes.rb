Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/destroy'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  root "articles#home"

  post "articles/creat" => "articles#creat"

  get "/home", to: "articles#home"
  get "/makethedeal", to: "articles#dealinput"
  get "/thisisyourdeal", to: "articles#apipart"
  get "/thisiswhatyougot", to: "articles#result"
  
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
