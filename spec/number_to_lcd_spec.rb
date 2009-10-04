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
      expected = <<LCD
   
| |
 - 
  |
   
LCD
      4.should convert_to(expected)
    end
    it "converts 5" do
      expected = <<LCD
 - 
|  
 - 
  |
 - 
LCD
      5.should convert_to(expected)
    end
    it "converts 6" do
      expected = <<LCD
 - 
|  
 - 
| |
 - 
LCD
      6.should convert_to(expected)
    end
    it "converts 7" do
      expected = <<LCD
 - 
  |
   
  |
   
LCD
      7.should convert_to(expected)
    end
    it "converts 8" do
      expected = <<LCD
 - 
| |
 - 
| |
 - 
LCD
      8.should convert_to(expected)
    end
    it "converts 9" do
      expected = <<LCD
 - 
| |
 - 
  |
 - 
LCD
      9.should convert_to(expected)
    end
    it "converts 0" do
      expected = <<LCD
 - 
| |
   
| |
 - 
LCD
      0.should convert_to(expected)
    end
  end

  context "multiple digits" do
    it "converts 12" do
      expected = <<LCD
   - 
|   |
   - 
| |  
   - 
LCD
      12.should convert_to(expected)
    end
    it "converts 345" do
      expected = <<LCD
 -       - 
  | | | |  
 -   -   - 
  |   |   |
 -       - 
LCD
      345.should convert_to(expected)
    end
    it "converts 67890" do
      expected = <<LCD
 -   -   -   -   - 
|     | | | | | | |
 -       -   -     
| |   | | |   | | |
 -       -   -   - 
LCD
      67890.should convert_to(expected)
    end
  end
end
