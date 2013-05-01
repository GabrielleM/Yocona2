# MH 3/24/13 Added basic CRUD actions for River model 

class RiversController < ApplicationController

  # MH 4/30/13 Devise allows non-authenticated users to only access show and index CRUD actions
  before_filter :authenticate_user!, :except => [:show, :index]  

  # GET /rivers
  # GET /rivers.json
  def index
    @rivers = River.all({:order => :name})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rivers }
    end
  end

  # GET /rivers/1
  # GET /rivers/1.json
  def show
    @river = River.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @river }
    end
  end

  # GET /rivers/new
  # GET /rivers/new.json
  def new
    @river = River.new
    # @river = River.create!(params[:river])

    # flash[:notice] = "Your river was successfully created."
    # redirect_to "/"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @river }
    end 
  end

  # GET /rivers/1/edit
  def edit
    @river = River.find(params[:id])
  end

  # POST /rivers
  # POST /rivers.json
  def create
    @river = River.new(params[:river])
    respond_to do |format|
      if @river.save
        format.html { redirect_to @river, notice: 'River was successfully created.' }
        format.json { render json: @river, status: :created, location: @river }
      else
        format.html { render action: "new" }
        format.json { render json: @river.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PUT /rivers/1
  # PUT /rivers/1.json
  def update
    @river = River.find(params[:id])

    respond_to do |format|
      if @river.update_attributes(params[:river])
        format.html { redirect_to @river, notice: 'River was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @river.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rivers/1
  # DELETE /rivers/1.json
  def destroy
    @river = River.find(params[:id])
    @river.destroy

    respond_to do |format|
      format.html { redirect_to rivers_url }
      format.json { head :no_content }
    end
  end

# MH 3/24/13 Class getter for river name by river ID
  def self.get_name river_id
    @name = River.find_by_id(river_id).name
  end 

end
