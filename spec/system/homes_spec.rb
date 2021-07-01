require "rails_helper"

RSpec.describe "Homes", type: :system do
  it "visits home page" do
    visit root_path

    expect(page).to have_selector("p", text: "URL shortener")
    expect(page).to have_link("Log in", href: new_user_session_path)
    expect(page).to have_link("Get started", href: new_user_registration_path)
  end
end
