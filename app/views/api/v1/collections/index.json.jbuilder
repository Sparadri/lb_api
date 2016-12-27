
# current user information
json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }

json.collections do

  json.array! @filtered_collections do |collection|

    # should be put in partial but issue: title should be details and not collection
    json.details do
      json.partial! partial: './api/v1/shared/collection', locals: { collection: collection }
    end

    json.interview do
      json.array! collection.interviews do |interview|
        json.partial! partial: './api/v1/shared/interview', locals: { interview: interview }
      end
    end
    json.partial! partial: './api/v1/shared/collectioner', locals: { collectioner: collection.collectioner }
  end

end
