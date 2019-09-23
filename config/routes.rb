Rails.application.routes.draw do
  get '/',              to: 'locations#index'
  get 'locations/show', to: 'locations#show'
  get 'locations/new',  to: 'locations#new'
  post '/locations',    to: 'locations#create'
  get '/notechforice',  to: 'static#notech'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
