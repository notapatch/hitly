require "rails_helper"

RSpec.describe RedirectionsShow, type: :service do
  it "finds a known short url" do
    link = create(:link, id: 62, user: create(:user, :tested))
    result = RedirectionsShow.new.show_redirection(short_url: "ba")

    expect(result.found?).to be true
    expect(result.link).to eq link
  end

  it "misses an unknown short url" do
    result = RedirectionsShow.new.show_redirection(short_url: "ba")

    expect(result.found?).to be false
    expect(result.link).to be nil
  end
end
