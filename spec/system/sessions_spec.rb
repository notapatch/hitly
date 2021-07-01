require "rails_helper"

RSpec.describe "Homes", type: :system do
  it "can log in" do
    create(:user, email: "test@example.com",
                  password: "password")
    visit new_user_session_path

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    click_on "Log in"

    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_link("Logout", href: destroy_user_session_path)
  end

  it "displays errors" do
    visit new_user_session_path

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    click_on "Log in"

    expect(page).to have_content("Invalid Email or password.")
  end
end
