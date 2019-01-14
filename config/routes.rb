Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user/show'=> "user#show"
  post "user/url" => "user#url"
  post "logout" => "user#logout"
  post "user/create" => "user#create"
  get "user/index" => "user#index"
  get "signup" => "user#new"
  post "update" => "user#update"
  post "/" => "home#login"
  get "/" => "home#top"



end
