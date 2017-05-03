class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string  :name
      t.string  :shop_image_url
      t.string  :location
      t.integer :user_id

      t.timestamps
    end
    add_index :shops, :user_id
  end
end
