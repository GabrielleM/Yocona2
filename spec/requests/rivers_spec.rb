require 'spec_helper'

describe "Rivers" do
  describe "GET /rivers" do
    it "success" do
      get rivers_path
      response.status.should be(200)
    end
  end
end
