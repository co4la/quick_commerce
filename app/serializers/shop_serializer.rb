class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :shop_image_url, :facebook_url, :twitter_url

  has_many :products
end
