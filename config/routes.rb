Rails.application.routes.draw do
  get 'home/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  get '/writing/:writing_uri', to: 'writing#show'
  get '/writing', to: 'writing#list'
  get '/training', to: 'training#index'
  get '/supervision', to: 'supervision#index'
  get '/contact', to: 'contact#index'
  get '/therapy', to: 'therapy#index'
  root to: 'home#index'
end

