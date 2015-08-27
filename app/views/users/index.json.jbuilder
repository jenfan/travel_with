json.array!(@users) do |user|
  json.extract! user, :id, :name, :age, :gender, :token, :birthday
  json.url user_url(user, format: :json)
end
