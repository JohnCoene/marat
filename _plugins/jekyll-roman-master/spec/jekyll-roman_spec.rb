require 'spec_helper'

describe(Jekyll) do
  let(:overrides) do
    {
      "source"      => source_dir,
      "destination" => dest_dir,
      "url"         => "http://example.org",
    }
  end
  let(:config) do
    Jekyll.configuration(overrides)
  end
  let(:site)     { Jekyll::Site.new(config) }
  let(:contents) { File.read(dest_dir("index.html")) }
  before(:each) do
    site.process
  end

  it "converts 1 into roman numeral" do
    expect(contents).to match /I/
    expect(contents).to_not match /1/
  end

  it "converts 4 into roman numeral" do
    expect(contents).to match /IV/
    expect(contents).to_not match /4/
  end

  it "converts 5 into roman numeral" do
    expect(contents).to match /V/
    expect(contents).to_not match /5/
  end

  it "converts 9 into roman numeral" do
    expect(contents).to match /IV/
    expect(contents).to_not match /9/
  end

  it "converts 10 into roman numeral" do
    expect(contents).to match /X/
    expect(contents).to_not match /10/
  end

  it "converts 40 into roman numeral" do
    expect(contents).to match /XL/
    expect(contents).to_not match /40/
  end

  it "converts 50 into roman numeral" do
    expect(contents).to match /L/
    expect(contents).to_not match /50/
  end

  it "converts 90 into roman numeral" do
    expect(contents).to match /L/
    expect(contents).to_not match /90/
  end

  it "converts 100 into roman numeral" do
    expect(contents).to match /C/
    expect(contents).to_not match /100/
  end

  it "converts 400 into roman numeral" do
    expect(contents).to match /CD/
    expect(contents).to_not match /400/
  end

  it "converts 500 into roman numeral" do
    expect(contents).to match /D/
    expect(contents).to_not match /500/
  end

  it "converts 900 into roman numeral" do
    expect(contents).to match /CM/
    expect(contents).to_not match /900/
  end

  it "converts 1000 into roman numeral" do
    expect(contents).to match /M/
    expect(contents).to_not match /1000/
  end

  it "converts 2 into roman numeral" do
    expect(contents).to match /II/
    expect(contents).to_not match /2/
  end

  it "converts 13 into roman numeral" do
    expect(contents).to match /XIII/
    expect(contents).to_not match /13/
  end

  it "converts 94 into roman numeral" do
    expect(contents).to match /XCIV/
    expect(contents).to_not match /94/
  end

  it "converts 496 into roman numeral" do
    expect(contents).to match /CDXCVI/
    expect(contents).to_not match /496/
  end

  it "converts 998 into roman numeral" do
    expect(contents).to match /CMXCVIII/
    expect(contents).to_not match /998/
  end

  it "converts 1066 into roman numeral" do
    expect(contents).to match /MLXVI/
    expect(contents).to_not match /1066/
  end

  it "converts 1998 into roman numeral" do
    expect(contents).to match /MCMXCVIII/
    expect(contents).to_not match /2015/
  end

  it "does not convert word to roman numeral" do
    expect(contents).to match /word/
  end
end
