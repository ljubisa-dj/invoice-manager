Rails.application.routes.draw do
  root "home#index"

  get "invoices/new", to: "invoices#new"
  get "invoices/:id", to: "invoices#show", as: "invoice"

  resources :invoices
end
