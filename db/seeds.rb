10.times do
  Product.create!({
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Lorem.sentence(1),
    image_url: Faker::Avatar.image
  })
end
