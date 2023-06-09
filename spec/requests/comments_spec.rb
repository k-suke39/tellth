require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/comments/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/comments/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/comments/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/comments/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
