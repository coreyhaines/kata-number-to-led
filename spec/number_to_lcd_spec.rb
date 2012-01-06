require 'number_to_lcd'

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
    xit "converts 1" do
      expected = <<LCD
   
  |
   
  |
   
LCD
      1.should convert_to(expected)
    end
    xit "converts 2" do
      expected = <<LCD
 - 
  |
 - 
|  
 - 
LCD
      2.should convert_to(expected)
    end
    xit "converts 3" do
      expected = <<LCD
 - 
  |
 - 
  |
 - 
LCD
      3.should convert_to(expected)
    end
    xit "converts 4" do
      expected = <<LCD
   
| |
 - 
  |
   
LCD
      4.should convert_to(expected)
    end
    xit "converts 5" do
      expected = <<LCD
 - 
|  
 - 
  |
 - 
LCD
      5.should convert_to(expected)
    end
    xit "converts 6" do
      expected = <<LCD
 - 
|  
 - 
| |
 - 
LCD
      6.should convert_to(expected)
    end
    xit "converts 7" do
      expected = <<LCD
 - 
  |
   
  |
   
LCD
      7.should convert_to(expected)
    end
    xit "converts 8" do
      expected = <<LCD
 - 
| |
 - 
| |
 - 
LCD
      8.should convert_to(expected)
    end
    xit "converts 9" do
      expected = <<LCD
 - 
| |
 - 
  |
 - 
LCD
      9.should convert_to(expected)
    end
    xit "converts 0" do
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
    xit "converts 12" do
      expected = <<LCD
     - 
  |   |
     - 
  | |  
     - 
LCD
      12.should convert_to(expected)
    end
    xit "converts 345" do
      expected = <<LCD
 -       - 
  | | | |  
 -   -   - 
  |   |   |
 -       - 
LCD
      345.should convert_to(expected)
    end
    xit "converts 67890" do
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
