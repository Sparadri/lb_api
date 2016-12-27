# current user information
json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }

json.collectioners do
  json.array! @collectioners do |collectioner|
    json.partial! partial: './api/v1/shared/collectioner', locals: { collectioner: collectioner }
  end
end
