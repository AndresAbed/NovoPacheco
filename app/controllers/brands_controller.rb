class BrandsController < ApplicationController
  def show
    @brand = Brand.find(params[:id])
    @details = @brand.detail
    @brands = Brand.all
  end
end
