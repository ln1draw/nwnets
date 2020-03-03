Rails.application.routes.draw do
  get '/',              to: 'static#welcome'
  get '/notechforice',  to: 'static#notech'
  get '/branding',      to: 'static#branding'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
