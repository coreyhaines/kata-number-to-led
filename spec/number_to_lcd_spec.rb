require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe NumberToLcd do
  context "single digits" do
    it "converts 1"
    it "converts 2"
    it "converts 3"
    it "converts 4"
    it "converts 5"
    it "converts 6"
    it "converts 7"
    it "converts 8"
    it "converts 9"
    it "converts 0"
  end

  context "multipled digits" do
    it "converts 12"
    it "converts 34"
    it "converts 567"
    it "converts 7890"
  end
end
