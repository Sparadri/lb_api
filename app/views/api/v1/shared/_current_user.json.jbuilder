if current_user
  json.current_user do
    json.is_logged        true
    json.email            @current_user.email
    json.is_nl_subscribed true
  end
else
  json.current_user do
    json.is_logged        false
    json.email            nil
    json.is_nl_subscribed false
  end
end
