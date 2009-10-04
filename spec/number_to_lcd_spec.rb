require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

Spec::Matchers.define :convert_to do |expected|
  match do |actual|
    NumberToLcd.convert(actual) == expected.chop
  end
  failure_message_for_should do |actual|
    "Expected #{actual} to be\n#{expected.chop}\nbut was\n#{NumberToLcd.convert(actual)}"
  end
end
describe NumberToLcd do
  context "single digits" do
    it "converts 1" do
      expected = <<LCD
   
  |
   
  |
   
LCD
      1.should convert_to(expected)
    end
    it "converts 2" do
      expected = <<LCD
 - 
  |
 - 
|  
 - 
LCD
      2.should convert_to(expected)
    end
    it "converts 3" do
      expected = <<LCD
 - 
  |
 - 
  |
 - 
LCD
      3.should convert_to(expected)
    end
    it "converts 4" do
      NumberToLcd.convert(4).should == "   \n| |\n - \n  |\n   "
    end
    it "converts 5" do
      NumberToLcd.convert(5).should == " - \n|  \n - \n  |\n - "
    end
    it "converts 6" do
      NumberToLcd.convert(6).should == " - \n|  \n - \n| |\n - "
    end
    it "converts 7" do
      NumberToLcd.convert(7).should == " - \n  |\n   \n  |\n   "
    end
    it "converts 8" do
      NumberToLcd.convert(8).should == " - \n| |\n - \n| |\n - "
    end
    it "converts 9" do
      NumberToLcd.convert(9).should == " - \n| |\n - \n  |\n - "
    end
    it "converts 0" do
      NumberToLcd.convert(0).should == " - \n| |\n   \n| |\n - "
    end
  end

  context "multiple digits" do
    it "converts 12"
    it "converts 34"
    it "converts 567"
    it "converts 7890"
  end
end
