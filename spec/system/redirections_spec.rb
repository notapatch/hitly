require "rails_helper"

RSpec.describe "Redirections", type: :system do
  it "redirects known short url to long url" do
    #
    # HACK
    # TODO: test suite shouldn't be redirecting to real networks during testing
    #       Hack is to use google as a short term fix instead of webmock or
    #       other such solutions
    #
    link = create(:link, id: 62, long_url: "http://google.com/", user: create(:user, :tested))

    visit redirections_path(short_url: "ba")

    expect(page.current_url).to eq link.long_url
  end

  it "redirects unknown short url to 404 page" do
    skip
    visit redirections_path(short_url: "d")

    expect(page).to have_selector("h1", text: "Unknown short link")
  end
end
