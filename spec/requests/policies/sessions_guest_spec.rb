require "rails_helper"

RSpec.describe "SessionsGuest", type: :request do
  describe "GET /new_user_sessions" do
    it "is permitted" do
      get new_user_session_path

      expect(response).to have_http_status(:ok)
    end
  end
end
