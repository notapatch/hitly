require "rails_helper"

RSpec.describe "HomesGuest", type: :request do
  describe "GET /root" do
    it "is permitted" do
      get root_path

      expect(response).to have_http_status(:ok)
    end
  end
end
