require 'spec_helper'


RSpec.configure do |config|
  config.before(:each) do


    DatabaseCleaner.start
    config.include Devise::TestHelpers, :type => :controller

    #ActiveRecord::Base.send(:attr_accessible, nil)
    begin
    River.create!({:name => 'Big River', :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' })
  rescue ActiveRecord::RecordNotUnique
      x = River.find_by_sql "SELECT rivers.name from rivers where rivers.id = 1"
  end
  


  end


  config.after(:each) do
    DatabaseCleaner.clean
  end

end



describe TripsController do
class Trip < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :river_id
end


  # This should return the minimal set of attributes required to create a valid
  # Trip. As you add validations to Trip, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
{"river"=>{"name"=>"Big River"}, "trip"=>{"leader"=>"abc", "agency"=>"a", "agency_contact"=>"", "start_date(1i)"=>"2013", "start_date(2i)"=>"4", "start_date(3i)"=>"8", "duration"=>"1", "flow"=>"", "num_participants"=>"", "num_guides"=>"", "report_link"=>"", "summary"=>"", "pictures"=>""}, "commit"=>"Create New Trip", "river_id"=>"1"}


  end
  def valid_trip
 {"leader"=>"abc", "agency"=>"a", "agency_contact"=>"", "start_date(1i)"=>"2013", "start_date(2i)"=>"4", "start_date(3i)"=>"8", "duration"=>"1", "flow"=>"", "num_participants"=>"", "num_guides"=>"", "report_link"=>"", "summary"=>"", "pictures"=>"", "river_id"=>"1"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TripsController. Be sure to keep this updated too.
  def valid_session
    {}
  end





 describe "Search trips" do
  render_views
    it "when search term is found, valid params" do
         post :create, valid_attributes
       visit search_path

fill_in 'trip[leader]', with: 'abc'
click_link_or_button "Find Trip"
      page.body.should =~ /abc/m

    end

    it "when search term is NOT found, INvalid params" do
         post :create, valid_attributes
       visit search_path

fill_in 'trip[leader]', with: 'qqqqqqq'
click_link_or_button "Find Trip"

      page.body.should_not =~ /qqqqqqq/m

    end

  end



 describe "BROWSE trips" do
  render_views
    it "when all browse terms are found, valid params" do

         post :create, valid_attributes

       visit browse_path
      page.body.should =~ /Big River/m

    end
    it "when browse term is found, valid params" do

         post :create, valid_attributes

       visit("/browse?river_name=All&leader=abc&agency=All")

      page.body.should =~ /abc/m
      page.body.should =~ /2013/m

    end
    it "when browse term is NOT found, INvalid params" do
        
    River.create!({:name => 'River2', :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' })
         
         post :create, valid_attributes

       visit("/browse?river_name=River2&leader=All&agency=All")
      page.body.should_not =~ /2013/m

    end

  end



  describe "POST create" do

    describe "with valid params" do
      it "creates a new Trip" do
        expect {
          post :create, valid_attributes
        }.to change(Trip, :count).by(1)
      end

      it "assigns a newly created trip as @trip" do
        post :create, valid_attributes
        assigns(:trip).should be_a(Trip)
        assigns(:trip).should be_persisted
      end


      it "redirects to the created river" do
        post :create, valid_attributes
       tmp = Trip.last[:id].to_s
        response.body.should =~ /.*#{Regexp.escape(tmp)}.*/  
      flash[:notice].should eql('Trip was successfully created.')
      end


    end

  end

 describe "GET index" do
    it "assigns all trips as @trips" do
       trip = Trip.create! valid_trip

      get :index, river_id: "1"
 assigns(:trips).should eq([trip])
    end
  end

  describe "GET show" do
    it "assigns the requested trip as @trip" do
      trip = Trip.create! valid_trip
      get :show, river_id: "1", id: "1"
      assigns(:trip).should eq(trip)
    end
  end


  describe "GET edit" do
    it "assigns the requested trip as @trip" do
      trip = Trip.create! valid_trip
      get :edit, :id => "1", river_id: "1"
      assigns(:trip).should eq(trip)
    end
  end

    describe "PUT update" do
    def valid_session
      {river_id: 1, :id => "1"}
    end

    describe "with valid params" do
     
      it "assigns the requested trip as @trip" do
        trip = Trip.create! valid_trip
        put :update, :trip => valid_trip, river_id: "1", id: "1"
        assigns(:trip).should eq(trip)
      end
    end

    describe "with invalid params" do
      it "assigns the trip as @trip" do
        trip = Trip.create! valid_trip
        # Trigger the behavior that occurs when invalid params are submitted
        Trip.any_instance.stub(:save).and_return(false)
        put :update, :trip => valid_trip, river_id: "1", id: "1"
        assigns(:trip).should eq(trip)
      end

      it "re-renders the 'edit' template" do
        trip = Trip.create! valid_trip
        # Trigger the behavior that occurs when invalid params are submitted
        Trip.any_instance.stub(:save).and_return(false)
        put :update, :trip => {  }, river_id: "1", id: "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    def valid_session
      {river_id: 1, :id => "1"}
    end
    it "destroys the requested trip" do
      trip = Trip.create! valid_trip
      expect {
        delete :destroy, valid_session
      }.to change(Trip, :count).by(-1)
    end
  end



 end


