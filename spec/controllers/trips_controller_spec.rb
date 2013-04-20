require 'spec_helper'

describe TripsController do


  # This should return the minimal set of attributes required to create a valid
  # Trip. As you add validations to Trip, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
{"river"=>{"name"=>"Big River"}, "trip"=>{"leader"=>"jhkjhkjhjkh", "agency"=>"", "agency_contact"=>"", "start_date(1i)"=>"2013", "start_date(2i)"=>"4", "start_date(3i)"=>"8", "duration"=>"1", "flow"=>"", "num_participants"=>"", "num_guides"=>"", "report_link"=>"", "summary"=>"", "pictures"=>""}, "commit"=>"Create New Trip", "river_id"=>"1"}


  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TripsController. Be sure to keep this updated too.
  def valid_session
    {}
  end




  describe "POST create" do
    describe "with valid params" do
      it "creates a new Trip" do
        expect {
          post :create, valid_attributes, valid_session
        }.to change(Trip, :count).by(1)
      end

      it "assigns a newly created trip as @trip" do
        post :create, valid_attributes, valid_session
        assigns(:trip).should be_a(Trip)
        assigns(:trip).should be_persisted
      end


      it "redirects to the created river" do
        post :create, valid_attributes, valid_session
       tmp = Trip.last[:id].to_s
        response.body.should =~ /.*#{Regexp.escape(tmp)}.*/  
      flash[:notice].should eql('Trip was successfully created.')
      end


    end
  end


 end
