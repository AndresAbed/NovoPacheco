Rails.application.routes.draw do
  root 'main#index'
  get '/contacto' => 'contact#new'
  post "/contacto" => "contact#contact_form", as: :contact_form
  get '/about' => "main#about"
  get '/marcas' => "main#brands"

  resources :brands, only: [:show], path: '/marca'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end
end
