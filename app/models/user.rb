class User < ActiveRecord::Base
	has_many :routes, dependent: :destroy
	has_many :points , through: :routes

	def search
		a=points.map do |point|
			Point.where("route_id != ? AND town_id = ?", point.route_id, point.town_id)
		end
		a.reject(&:blank?).map{|x| x.map{|f| {x => f.user} } }.flatten!
	end
	def c_p town_id, date_from
		routes.first.points.create(town_id: town_id, date_from: date_from, date_to: date_from+1)
	end
	def town_search town_id
		town_id=Town.where(api_id:town_id.to_s).first.id
		a=points.map do |point|
			Point.where("route_id != ? AND town_id = ?", point.route_id, town_id)
		end
		a.reject(&:blank?).map{|x| x.map{|f| f.user.as_json.merge( {'town_name' => x.name } ) } }.flatten!
	end
end


