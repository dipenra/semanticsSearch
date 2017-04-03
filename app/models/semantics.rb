class Semantics < ApplicationRecord
  API_KEY = SemanticsConfig.config[:key]
  API_SECRET = SemanticsConfig.config[:secret]

  def self.get_products(product, page)
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    sem3.products_field( "search", product )

    semPage = 0
    if( page > 1 )
      while (productsHash = sem3.iterate_products) do
        semPage = semPage + 1
        if(semPage == page)
          return productsHash
        end
      end
    else
      return sem3.get_products()
    end
  end
end