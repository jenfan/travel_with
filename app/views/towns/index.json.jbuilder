json.array!(@towns) do |town|
  json.extract! town, :id, :name, :api_id, :route_id
  json.url town_url(town, format: :json)
end
