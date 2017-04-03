class SemanticsController < ApplicationController

  def index
    @page = 1
  end

  def create
    @searchTerm = params[:productName]
    @page = params[:page].to_i
    @nextpg = true

    dbKey = ProductCache.getKey(@searchTerm, @page)

    if !ProductCache.exists?(key: dbKey)
      @products = Semantics.get_products(@searchTerm, @page)
      if(@products)
        ProductCache.create(key: dbKey, name: @searchTerm, values: @products.to_json, date_created: Time.now)
      else
        @nextpg = false
      end
    else
      dbproducts = ProductCache.find_by(key: dbKey)
      begin
        @products = JSON.parse(dbproducts[:values])
      rescue
        ProductCache.where(key: dbKey).destroy_all
        @products = nil
      end
    end

    render :template => 'semantics/products', :layout => false
  end
end
