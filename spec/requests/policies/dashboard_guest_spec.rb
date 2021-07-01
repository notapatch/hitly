require "rails_helper"

RSpec.describe "DashboardGuest", type: :request do
  describe "GET /dashboards" do
    it "is forbidden" do
      get dashboards_path

      expect(response).to have_http_status(:found)
      expect(response.body).to include("sign_in")
    end
  end
end
