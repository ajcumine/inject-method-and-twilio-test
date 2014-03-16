require "takeaway.rb"

describe Takeaway do

  let(:order) {double :order,{:dish_quantities => {:pizza => 1, :burger => 2, :chips => 3}, :total => 18.5}}
  let(:takeaway) {takeaway = Takeaway.new(order)}
  
  it "should initialize with an order" do
    expect(takeaway.order).to eq(order)
  end

  it "should know what has been ordered" do
    expect(takeaway.order.dish_quantities.keys).to eq([:pizza, :burger, :chips])
  end
  
end
  