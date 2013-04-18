# MH 3/24/13 Added basic CRUD action for Trips model
# More complex than Rivers model due to nesting of Trips resource within Rivers resource
# and nested routing so that all trip routes must follow River/Trip#action route structure
# As a result, when creating a new Trip, the first River instance in the Rivers table is 
# used as the default River for the Trip until specified otherwise. 

class TripsController < ApplicationController

  # before_filter :set_default_river_id
  # def set_default_river_id
    # @@default_river_index = River.all[0].id
  # end

# MH 3/24/13 -- Retrieve the first river in the Rivers table as a stand-in river while a trip not associated with any river
# has a river added to it by the user during the Create action 
  @@default_river_index = River.all[0].id

# MH 3/24/13 -- Create class getter for ID of the default river instance, if a trip is not yet associated with any river
  def self.default_river_index
    @@default_river_index
  end

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
    @river = River.find(params[:river_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip = Trip.find(params[:id])
    @river = River.find(params[:river_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/new
  # GET /trips/new.json
  def new
    # @trip = Trip.new
    @river = River.find(params[:river_id])
    # @trip = @river.trips.build
    # respond_with(@trip)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/1/edit
  def edit
    @trip = Trip.find(params[:id])
    @river = River.find_by_id(@trip.river_id)
  end

  # POST /trips
  # POST /trips.json
  def create
    # @trip = Trip.create!(params[:trip])
    # flash[:notice] = "Your trip was successfully created."
    # redirect_to "/"

    @trip = Trip.new(params[:trip])
    river_name = params[:river]["name"]
    river = River.find_by_name(river_name) 
    @trip.river_id = river.id
    @trip.save
    # redirect_to river_trip_path(@trip.river_id, @trip.id), notice: 'Trip was successfully created.' 

    # @river = River.find(params[:river_id])
    # @trip = @river.trips.build(params[:trip])
    # if @trip.save

    # end

    respond_to do |format|
      if @trip.save
        format.html { redirect_to river_trip_path(@trip.river_id, @trip.id), notice: 'Trip was successfully created.' }
        format.json { render json: river_trip_path(@trip.river_id, @trip.id), status: :created, location: river_trip_path(@trip.river_id, @trip.id)}
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end  

  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])
    @trip.update_attributes(params[:trip])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to river_trip_path(@trip.river_id, @trip.id), notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end 

  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to river_trip_path

    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end 

  end


  def search

  end 

  def browse

  end 
  
end
