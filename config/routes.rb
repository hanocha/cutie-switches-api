Rails.application.routes.draw do
  resources :switches
  root 'switches#index'
end
