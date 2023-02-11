require 'rails_helper'

RSpec.describe "NewsPieces", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/news_pieces/"
      expect(response).to have_http_status(:success)
    end
  end
end
