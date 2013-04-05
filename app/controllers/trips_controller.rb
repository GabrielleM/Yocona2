class TripsController < ApplicationController
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
  end

  # GET /trips/1/edit
  def edit
    @trip = Trip.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    # @trip = Trip.create!(params[:trip])
    # flash[:notice] = "Your trip was successfully created."
    # redirect_to "/"

    @trip = Trip.new(params[:trip])
    @trip.save
    redirect_to river_trip_path(@trip.river_id,@trip.id), notice: 'Trip was successfully created.' 

    # @river = River.find(params[:river_id])
    # @trip = @river.trips.build(params[:trip])
    # if @trip.save

    # end 
  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])
    @trip.update_attributes(params[:trip])
    redirect_to river_trip_path(@trip.river_id, @trip.id), notice: 'Trip was successfully updated.'

  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to river_trip_path
  end


  def search

  end 

  def browse

  end 
end
