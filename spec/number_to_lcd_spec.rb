require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe NumberToLcd do
  it "can convert a number" do
    NumberToLcd.convert(1)
  end
end
