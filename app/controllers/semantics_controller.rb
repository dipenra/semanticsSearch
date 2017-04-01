class SemanticsController < ApplicationController
  def index
  end

  def create
    @searchTerm = params[:productName]
    @products = Semantics.get_products(@searchTerm)
    render :template => 'semantics/products', :layout => false
  end
end
