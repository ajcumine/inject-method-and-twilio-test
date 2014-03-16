require "inject.rb"

describe Array do
  context "default inject" do
    it "should sum the array" do
      expect([1,2,3,4].inject(0){|memo, n| memo + n}).to eq(10)
    end
  end
end