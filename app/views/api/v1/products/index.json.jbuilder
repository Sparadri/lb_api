# add all number of products

json.nb_products Product.where(is_live: true).length

# current user information
json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }

# categories information
json.categories do
  json.array! Category.all do |category|
    # categories should be ordered by number of items in them, with no pagination
    json.partial! partial: './api/v1/shared/category', locals: { category: category }
  end
end

# collectioners information
json.collectioners do
  json.array! Collectioner.all do |collectioner|
    # categories should be ordered by number of items in them, with no pagination
    json.partial! partial: './api/v1/shared/collectioner', locals: { collectioner: collectioner }
  end
end

json.products do
  json.array! @filtered_products do |product|

    json.details do
      json.id            product.id
      json.is_live       product.is_live
      json.title         product.title
      json.description   product.description
      json.price         product.price
      json.picture       product.picture
      json.shop_url      product.shop_url
      json.created_at    product.created_at
    end

    json.partial!      partial: './api/v1/shared/collectioner', locals: { collectioner: product.collection.collectioner }
    json.partial!      partial: './api/v1/shared/collection', locals: { collection: product.collection }

    json.categories do
      json.array! product.categories do |category|
        json.partial! partial: './api/v1/shared/category', locals: { category: category }
      end

    end
  end
end
