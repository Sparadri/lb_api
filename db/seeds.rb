User.destroy_all
Category.destroy_all
Product.destroy_all
Collection.destroy_all
Collectioner.destroy_all

# USER - should not work as not in array + should print and save token
password = '123456'
user     = User.create(email: 'me@me.com', password: password)
p "token to be recorded: #{user.authentication_token}"

# CATEGORIES
['fashion', 'men', 'women', 'furniture', 'clothing', 'shoes', 'art', 'decoration'].each do |category|
  p Category.create(name: category)
end

# COLLECTIONER
5.times do
  first_name  = Faker::Name.first_name
  last_name   = Faker::Name.last_name
  email       = Faker::Internet.email
  p Collectioner.create(
      first_name: first_name,
      last_name: last_name,
      email: email
    )
end

# COLLECTION
10.times do
  color_light  = Faker::Color.hex_color
  color_dark   = Faker::Color.hex_color
  is_live      = [true, false, true].sample
  title        = Faker::Name.title
  collectioner = Collectioner.all.sample
  p Collection.create(
      collectioner: collectioner,
      color_light: color_light,
      is_live: is_live,
      color_dark: color_dark,
      title: title
    )
end

# PRODUCT
150.times do
  title       = Faker::Commerce.product_name
  collection  = Collection.all.sample
  price       = Faker::Commerce.price.to_f
  is_live     = [true, false].sample
  description = Faker::Hipster.sentences(4).join
  title       = Faker::Hipster.words(3)
  shop_url    = Faker::Internet.url('mock.com')
  product = Product.create(
      title: title,
      price: price,
      is_live: is_live,
      description: description,
      collection: collection,
      shop_url: shop_url
  )
  product.categories << Category.all.sample(2)
end



