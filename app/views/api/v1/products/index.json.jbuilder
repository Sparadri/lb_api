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
      json.partial! partial: './api/v1/shared/categories', locals: { category: category }
    end

  end
end



