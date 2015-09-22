RailsAdmin.config do |config|
  config.model Event do
    field :title
    field :description, :text do
      html_attributes do
        {rows: 10, 
          cols: 50}
      end
    end
    field :image
  end
  config.model Brand do
    field :name
    field :description, :text do
      html_attributes do
        {rows: 10, 
          cols: 50}
      end
    end
    field :besides, :text do
      html_attributes do
        {rows: 10, 
          cols: 50}
      end
    end
    field :logo
    field :image1
    field :image2
    field :image3
  end
  config.model Detail do
    field :web
    field :facebook
    field :location
    field :brand_id, :enum do
      enum do
        Brand.all.collect {|p| [p.name, p.id]}
      end
    end  
    field :open_hour
    field :close_hour
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
  config.excluded_models << User
end
