Rails.application.routes.draw do

  resources :users
  resources :bleeps

  get 'welcome/', to: 'welcome#index'

  root 'welcome#index'

end
