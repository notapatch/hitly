require "rails_helper"

RSpec.describe "Desktop", type: :system do
  include ActiveSupport::Testing::TimeHelpers

  it "displays desktop" do
    user = create(:user, :tested) do |u, _i|
      create_list(:link, 1, user: u)
    end
    sign_in user

    travel 2.days do
      visit dashboards_path

      expect(page).to have_link(user.links.first.long_url,
                                href: user.links.first.long_url)
      expect(page).to have_content("2 days")
    end
  end
end
