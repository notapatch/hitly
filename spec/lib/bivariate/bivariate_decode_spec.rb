require "spec_helper"
require_relative "../../../app/lib/bivariate"
require "base64"

RSpec.describe Bivariate do
  it "decodes first letter of alphabet" do
    expect(Bivariate.decode("a")).to eq(0)
  end

  it "encodes last character of alphabet" do
    expect(Bivariate.decode("9")).to eq(61)
  end

  it "encodes more than one character of alphabet" do
    expect(Bivariate.decode("ba")).to eq(62)
  end

  it "encodes three characters of alphabet" do
    expect(Bivariate.decode("baa")).to eq(3844)
  end
end
