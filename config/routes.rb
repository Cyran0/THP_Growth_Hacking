Rails.application.routes.draw do
  root to: 'static#home'

  get '/home', to: 'static#home', as: 'home'

  get '/devs', to: 'static#devs', as: 'devs'

  get '/corpo', to: 'static#corpo', as: 'corpo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
