class Semantics < ApplicationRecord
  API_KEY = SemanticsConfig.config[:key]
  API_SECRET = SemanticsConfig.config[:secret]

  def self.get_products(product)
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    sem3.products_field( "search", product )
    return sem3.get_products()
  end
end