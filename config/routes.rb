Rails.application.routes.draw do
  get '/', to: 'locations#index'
  get 'locations/show'
  get '/notechforice', to: 'static#notech'
  get '/branding', to: 'static#branding'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
