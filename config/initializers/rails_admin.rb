RailsAdmin.config do |config|
  config.model Event do
    field :title
    field :description
    field :image
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
end
