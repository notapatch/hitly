require "rails_helper"

RSpec.describe "Homes", type: :system do
  it "visits home page" do
    visit root_path

    expect(page).to have_selector("p", text: "URL shortener")
  end
end
