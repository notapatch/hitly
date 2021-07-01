require "rails_helper"

RSpec.describe ApplicationHelper do
  it "displays a short id" do
    expect(short_url(1)).to eq("http://test.host/b")
  end

  it "displays nothing if nil" do
    expect(short_url(nil)).to eq("")
  end
end
