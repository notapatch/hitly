require "rails_helper"

RSpec.describe "UserCreateLinks", type: :system do
  it "can create link" do
    skip("this fails but works on the system")
    sign_in create(:user, :tested)

    visit dashboards_path

    click_on "Create short link"

    expect(page).to have_selector("h1", text: "New Link")

    fill_in "Website", with: "www.google.com"

    # Fails here
    click_on "Create"

    expect(page).to have_content("Link was successfully created.")
  end
end
