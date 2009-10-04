require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe NumberToLcd do
  context "no scaling" do
    context "single digits" do
      it "convert 1" do
        NumberToLcd.convert(1).should == "   \n  |\n   \n  |\n   "
      end
      it "converts 2" do
        NumberToLcd.convert(2).should == " - \n  |\n - \n|  \n - "
      end
    end
  end
end
