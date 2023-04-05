Rails.application.routes.draw do
  root "home#index"
  get "invoices/new", to: "invoices#new"

  resources :invoices
end
