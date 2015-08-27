class FbController < ApplicationController
	require 'open-uri'
	require 'uri'
	def login
		token=params[:login][:token]
		user = User.where(token: token)
		if user.empty?
			user = FbGraph::User.me(token).fetch
			new_user=User.create(
				name: user.name.split(' ').first,
				age: user.birthday.nil? ? nil : (Date.today-user.birthday.to_date).to_i/365,
				gender: user.gender,
				avatar:user.picture(:large),
				birthday: user.birthday.nil? ? nil : user.birthday.to_date,
				location: user.location,
				token: token
				)
			user = new_user
		end
		render json: user
	end

	def index
		render json: User.all
	end

	def place
		search = params[:city]
		link = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input='+search+'&types=(cities)&language=ru&key=AIzaSyDWit8053nlIQr1154tNnjJ1wvA1a3kbLg'
		resp = JSON.load(URI.parse(URI.escape(link)))
		resp2 = resp.to_hash
		resp3 = resp2[resp2.keys[0]].collect{|x| { 'name' => x[x.keys[0]] , 'id' => x[x.keys[1]]} } 
		render json: Hash('cities' => resp3)
		# render json: resp2
	end
	def hello
		render text: 'Hey'
	end

	def insert_point
		render text: 'no token' and return unless params[:token]
		user = User.where(token: params[:token])

		town = Town.create(town_id:params[:citi_id], name: params[:citi_name])
		town.points.create(date:params[:date].to_date)
	end
end
