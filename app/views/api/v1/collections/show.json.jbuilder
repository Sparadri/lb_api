json.user do
  json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }
end

json.details do
  json.partial! partial: './api/v1/shared/collection', locals: { collection: @collection }
end

json.products do
  json.array! @collection.products do |product|
    json.partial! partial: './api/v1/shared/product', locals: { product: product }
  end
end
