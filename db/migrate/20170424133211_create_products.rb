class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :name
      t.integer :price
      t.text    :description
      t.string  :image_url
      t.integer :shop_id

      t.timestamps
    end
    add_index :products, :shop_id
  end
end
