class AlltripsController < ApplicationController

	def index
		@trips = Trip.all
	end 
end 