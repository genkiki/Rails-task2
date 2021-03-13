require 'rails_helper'

RSpec.describe "Top", type: :request do
  describe "GET /top" do
    it "access top page" do
      # get "/top/index"
      get "/"
      expect(response).to have_http_status(200)
    end
  end
end
