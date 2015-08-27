json.array!(@routes) do |route|
  json.extract! route, :id, :user_id
  json.url route_url(route, format: :json)
end
