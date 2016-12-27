
# current user information
json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }

json.collections do

  json.array! @filtered_collections do |collection|

    # should be put in partial but issue: title should be details and not collection
    json.details do
      json.id              collection.id
      json.is_live         collection.is_live
      json.title           collection.title
      json.color_dark      collection.color_dark
      json.color_light     collection.color_light
      json.created_at      collection.created_at
      json.updated_at      collection.updated_at
    end
    json.partial!      partial: './api/v1/shared/collectioner', locals: { collectioner: collection.collectioner }
  end

end
