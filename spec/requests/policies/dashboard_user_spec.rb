require "rails_helper"

RSpec.describe "DashboardUser", type: :request do
  describe "GET /dashboards" do
    it "is permitted" do
      user = create(:user, :tested)
      sign_in user
      get dashboards_path

      expect(response).to have_http_status(:ok)
    end
  end
end
