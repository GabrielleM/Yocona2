# MH 3/24/13 -- Sole functionality is to setup 'Show list of all trips' page 

class AlltripsController < ApplicationController

	def index
		@trips = Trip.all
	end 
end 