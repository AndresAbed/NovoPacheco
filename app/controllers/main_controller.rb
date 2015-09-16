class MainController < ApplicationController
  def index
    @events = Event.all
  end

  def about
    @brands = Brand.all
  end

  def brands
  end

  def contact
  end

  def brand_show
    
  end
end
