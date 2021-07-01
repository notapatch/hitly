require "rails_helper"

RSpec.describe "SessionsGuest", type: :request do
  describe "GET /new_user_sessions" do
    it "is permitted" do
      user = create(:user, :tested)
      sign_in user
      get new_user_session_path

      expect(response).to have_http_status(:found)
      expect(response.body).to include("dashboards")
    end
  end
end
