class CreateProductCaches < ActiveRecord::Migration[5.0]
  def change
    create_table :product_caches do |t|
      t.string :key
      t.string :name
      t.text :values
      t.timestamp :date_created

      t.timestamps
    end

    add_index :product_caches, :key, :unique => true
  end
end
