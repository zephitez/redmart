class Products< ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name
      t.integer :brand_id
      t.integer  :category_id
      t.string  :price

      t.timestamps
    end
end
end
