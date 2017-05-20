Rails.application.routes.draw do
  root 'main#index' 
  get 'main/index'

  get 'main/schedule'

  get 'main/event'

  get 'main/creater'

  get 'main/art'

  resources :reserves
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
