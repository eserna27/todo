Rails.application.routes.draw do
  resources :messages
  root "page#index"
end
