require "rails_helper"

RSpec.describe LinkCreate, type: :service do
  it "creates a link when http protocol added" do
    user = create(:user, :tested)
    result = LinkCreate.new.create_link(user: user, link_params: { long_url: "http://www.google.com" })

    expect(result.created?).to be true
    expect(result.link.long_url).to eq "http://www.google.com"
  end

  it "creates a link without http protocol" do
    user = create(:user, :tested)
    result = LinkCreate.new.create_link(user: user, link_params: { long_url: "www.google.com" })

    expect(result.created?).to be true
    expect(result.link.long_url).to eq "http://www.google.com"
  end

  it "does not create if link not valid" do
    user = create(:user, :tested)
    result = LinkCreate.new.create_link(user: user, link_params: { long_url: nil })

    expect(result.created?).to be false
    expect(result.link).to be nil
  end
end
