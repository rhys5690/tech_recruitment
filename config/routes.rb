Rails.application.routes.draw do

root :to => 'pages#home'
get '/home' => 'pages#home'
get '/json' => 'pages#json'


end
