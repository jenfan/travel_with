json.array!(@points) do |point|
  json.extract! point, :id, :date, :route_id, :town_id
  json.url point_url(point, format: :json)
end
