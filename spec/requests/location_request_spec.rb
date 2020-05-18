require 'rails_helper'

RSpec.describe "Locations", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/location/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/location/show"
      expect(response).to have_http_status(:success)
    end
  end

end
