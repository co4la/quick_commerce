user = User.create!({
  username: Faker::Name.name,
  email: Faker::Internet.email,
})

shop = Shop.create!({
  name: Faker::Company.name,
  shop_image_url: Faker::Avatar.image,
  location: "#{Faker::Address.city}, #{Faker::Address.state}",
  user_id: user.id
})

100.times do
  Product.create!({
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Lorem.sentence(1),
    image_url: Faker::Avatar.image,
    shop_id: shop.id
  })
end
