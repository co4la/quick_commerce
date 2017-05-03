require 'open-uri'
require 'nokogiri'

document = open('https://www.etsy.com/shop/CheriesSewCrafty')
content = document.read

parsed_content = Nokogiri::HTML(content)

user_info = parsed_content.css('.flag-body')
user_name = user_info.css('p[data-region="member-name"]').text.strip

user = User.create({
  username: user_name
})

shop_icon = parsed_content.css('.shop-icon')
shop_image_url = shop_icon.css('img').attr('src').value
shop_name = parsed_content.css('shop-name-and-title-container h1').text.strip
shop_location = parsed_content.css('shop-location').text.strip
shop = Shop.create({
  name: shop_name,
  location: shop_location,
  shop_image_url: shop_image_url,
  user_id: user.id
})


product_cards = parsed_content.css('.buyer-card')
product_cards.each do |product_card|
  name = product_card.css('.card-title').text.strip
  price = product_card.css('.card-price').text.strip
  image_url = product_card.css('.placeholder-content img').attr('src').value
  Product.create({
    name: name,
    price: price,
    image_url: image_url,
    shop_id: shop.id
  })
end

#etsy and facebook
