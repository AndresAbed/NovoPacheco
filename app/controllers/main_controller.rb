class MainController < ApplicationController
  def index
    @events = Event.all.order("created_at DESC")
  end

  def about
    @brands = Brand.all.order("created_at DESC")
  end

  def brands
    @brands = Brand.all.order("created_at DESC")
  end
end
