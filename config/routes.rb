Rails.application.routes.draw do
  root 'main#index' 
  get 'main/index'

  get 'main/schedule'

  get 'main/event'

  get 'main/creater'

  get 'main/art'

  get 'main/reserve'

  resources :reserve
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
