class AddFacebookUrlAndTwitterUrlToShops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :facebook_url, :string
    add_column :shops, :twitter_url, :string
  end
end
