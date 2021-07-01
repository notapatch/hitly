require "spec_helper"
require_relative "../../../app/lib/bivariate"

RSpec.describe Bivariate do
  it "encodes zero" do
    expect(Bivariate.encode(0)).to eq("a")
  end

  it "encodes one" do
    expect(Bivariate.encode(1)).to eq("b")
  end

  it "encodes last" do
    len = Bivariate::ALPHABET.length - 1
    expect(Bivariate.encode(len)).to eq("9")
  end

  it "encodes number last + 1" do
    len = Bivariate::ALPHABET.length

    expect(Bivariate.encode(len)).to eq("ba")
  end

  it "encodes number last + 2" do
    len = Bivariate::ALPHABET.length + 1

    expect(Bivariate.encode(len)).to eq("bb")
  end

  it "encodes number last + 3" do
    len = Bivariate::ALPHABET.length + 2

    expect(Bivariate.encode(len)).to eq("bc")
  end

  it "encodes three characters" do
    len = Bivariate::ALPHABET.length**2

    expect(Bivariate.encode(len)).to eq("baa")
  end
end
