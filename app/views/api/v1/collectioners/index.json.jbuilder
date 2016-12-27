# current user information
json.partial! partial: './api/v1/shared/current_user', locals: { current_user: @current_user }

json.collectioners do
  json.array! @collectioners do |collectioner|
    json.id             collectioner.id
    json.first_name     collectioner.first_name
    json.last_name      collectioner.last_name
    json.email          collectioner.email
    json.facebook_url   collectioner.facebook_url
    json.twitter_url    collectioner.twitter_url
    json.instagram_url  collectioner.instagram_url
    json.pinterest_url  collectioner.pinterest_url
    json.created_at     collectioner.created_at
  end
end
