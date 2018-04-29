Rails.application.routes.draw do
  get 'mastermente/index'
  get 'mastermente/reserves'
  root 'main#index' 
  get 'index',    to: 'main#index'
  get 'schedule', to: 'main#schedule'
  get 'event',    to: 'main#event'
  get 'creater',  to: 'main#creater'
  get 'art',      to: 'main#art'
  get 'reserve',  to: 'main#reserve'

  resources :reserve do
    collection do
      post 'confirm'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
