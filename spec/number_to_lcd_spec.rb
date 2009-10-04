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
      it "converts 3" do
        NumberToLcd.convert(3).should == " - \n  |\n - \n  |\n - "
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

    end
  end
end
