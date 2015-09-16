RailsAdmin.config do |config|
  config.model Event do
    field :title
    field :description
    field :image
  end
  config.model Brand do
    field :name
    field :description
    field :besides
    field :logo
    field :image1
    field :image2
    field :image3
  end
  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
  config.current_user_method(&:current_user)
  config.authorize_with do
      if not current_user
        redirect_to '/login'
      end  
    end
end
