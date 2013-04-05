class TripsController < ApplicationController

  # before_filter :set_default_river_id
  # def set_default_river_id
    # @@default_river_index = River.all[0].id
  # end

  @@default_river_index = River.all[0].id

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
