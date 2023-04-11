Rails.application.routes.draw do
  root "home#index"

  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  get "invoices/new", to: "invoices#new"
  get "invoices/:id", to: "invoices#show", as: "invoice"
  get "invoices/:id/edit", to: "invoices#edit", as: "invoices_todo"

  resources :invoices
end
