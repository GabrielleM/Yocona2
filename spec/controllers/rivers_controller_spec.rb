require 'spec_helper'


describe RiversController do

  # This should return the minimal set of attributes required to create a valid
  # River. As you add validations to River, be sure to
  # update the return value of this method accordingly.
  def valid_attributes_static
    {:name => 'A river', :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RiversController. Be sure to keep this updated too.
  def valid_session
    {}
  end

#http://stackoverflow.com/questions/88311/how-best-to-generate-a-random-string-in-ruby
def nameGen
  {:name => (0...16).map{(65+rand(26)).chr}.join}
end

def valid_attributes
      { :name => (0...16).map{(65+rand(26)).chr}.join, :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' }
end



  describe "GET index" do
    it "assigns all rivers as @rivers" do
      river = River.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rivers).should eq([river])
    end
  end

  describe "GET show" do
    it "assigns the requested river as @river" do
      river = River.create! valid_attributes
      get :show, {:id => river.to_param}, valid_session
      assigns(:river).should eq(river)
    end
  end

  describe "GET new" do
    it "assigns a new river as @river" do
      get :new, {}, valid_session
      assigns(:river).should be_a_new(River)
    end
  end

  describe "GET edit" do
    it "assigns the requested river as @river" do
      river = River.create! valid_attributes
      get :edit, {:id => river.to_param}, valid_session
      assigns(:river).should eq(river)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new River" do


        expect {
          post :create, {:river => nameGen }, valid_session
        }.to change(River, :count).by(1)
      end

      it "assigns a newly created river as @river" do
        post :create, {:river => nameGen}, valid_session
        assigns(:river).should be_a(River)
        assigns(:river).should be_persisted
      end

      it "redirects to the created river" do
        post :create, {:river => nameGen}, valid_session
        response.should redirect_to(River.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved river as @river" do
        # Trigger the behavior that occurs when invalid params are submitted
        River.any_instance.stub(:save).and_return(false)
        post :create, {:river => {  }}, valid_session
        assigns(:river).should be_a_new(River)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        River.any_instance.stub(:save).and_return(false)
        post :create, {:river => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested river" do
        river = River.create! valid_attributes
        # Assuming there are no other rivers in the database, this
        # specifies that the River created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        River.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => river.to_param, :river => { "these" => "params" }}, valid_session
      end

      it "assigns the requested river as @river" do
        river = River.create! valid_attributes
        put :update, {:id => river.to_param, :river => valid_attributes}, valid_session
        assigns(:river).should eq(river)
      end

      it "redirects to the river" do
        river = River.create! valid_attributes
        put :update, {:id => river.to_param, :river => valid_attributes}, valid_session
        response.should redirect_to(river)
      end
    end

    describe "with invalid params" do
      it "assigns the river as @river" do
        river = River.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        River.any_instance.stub(:save).and_return(false)
        put :update, {:id => river.to_param, :river => {  }}, valid_session
        assigns(:river).should eq(river)
      end

      it "re-renders the 'edit' template" do
        river = River.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        River.any_instance.stub(:save).and_return(false)
        put :update, {:id => river.to_param, :river => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested river" do
      river = River.create! valid_attributes
      expect {
        delete :destroy, {:id => river.to_param}, valid_session
      }.to change(River, :count).by(-1)
    end

    it "redirects to the rivers list" do
      river = River.create! valid_attributes
      delete :destroy, {:id => river.to_param}, valid_session
      response.should redirect_to(rivers_url)
    end
  end

end
