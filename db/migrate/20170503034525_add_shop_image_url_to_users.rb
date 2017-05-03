class AddShopImageUrlToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :shop_image_url, :string
  end
end
