class SearchController < ApplicationController

	def search
		render text: 'no token' and return unless params[:token]
		render text: 'no town api id' and return unless params[:town_id]
		user = User.where(token: params[:token])
		# user.town_search.map { |t| {'name' => t.name, 'date_from' => }

		# vozrast, name ,town, chisla, id 
	end
end
