require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /rock" do
    it "returns http success" do
      get "/game/rock"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /paper" do
    it "returns http success" do
      get "/game/paper"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /scissors" do
    it "returns http success" do
      get "/game/scissors"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /rules" do
    it "returns http success" do
      get "/game/rules"
      expect(response).to have_http_status(:success)
    end
  end

end
