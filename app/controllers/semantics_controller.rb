class SemanticsController < ApplicationController
  def index
  end

  def create
    @searchTerm = params[:productName]

    key = ProductCache.getKey(@searchTerm, "0")

    if !ProductCache.exists?(key: key)
      @products = Semantics.get_products(@searchTerm)
      ProductCache.create(key: key, name: @searchTerm, values: @products.to_json)
    else
      dbproducts = ProductCache.find_by(key: key)
      @products = JSON.parse(dbproducts[:values])
    end

    render :template => 'semantics/products', :layout => false
  end
end
