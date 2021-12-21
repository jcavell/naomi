Rails.application.routes.draw do
  get 'home/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  get '/clinical', to: 'clinical#index'
  get '/training', to: 'training#index'
  get '/writing', to: 'writing#list'
  get '/writing/:writing_uri', to: 'writing#show'
  get '/media', to: 'media#list'
  get '/media/:media_uri', to: 'media#show'
  root to: 'home#index'
end

