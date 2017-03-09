class ProductsController < ApplicationController
  load_resource

  def index
    @categories = Category.all
    @brands = Brand.all
  end

  def show
  end
end
