require 'rails_helper'

RSpec.describe "Movies", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/movies/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /featured" do
    it "returns http success" do
      get "/featuredMovies"
      expect(response).to have_http_status(:success)
    end
  end
end
