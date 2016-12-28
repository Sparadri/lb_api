# current user information
json.current_user do
  json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }
end

json.collectioners do
  json.array! @collectioners do |collectioner|
    json.partial! partial: './api/v1/shared/collectioner', locals: { collectioner: collectioner }
  end
end
