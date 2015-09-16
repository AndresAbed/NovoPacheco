Rails.application.routes.draw do
  root 'main#index'
  get '/about' => "main#about"
  get '/marcas' => "main#brands"
  get '/contacto' => "main#contact"
  get '/marca' => "main#brand_show"

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end
end
