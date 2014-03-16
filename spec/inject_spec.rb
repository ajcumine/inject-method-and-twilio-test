require "inject.rb"

describe Array do
  context "default inject" do
    it "should sum the array" do
      expect([1,2,3,4].inject(0){|memo, n| memo + n}).to eq(10)
    end
  end

  context "my_inject" do
    it "should sum the array" do
      expect([1,2,3,4].my_inject(0){|memo, n| memo + n}).to eq(10)
    end
    it "should multiply the array values" do
      expect([1,2,3,4].my_inject{|memo, n| memo * n}).to eq(24)
    end
  end
end