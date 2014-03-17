require "order.rb"

describe Order do

  let(:order){order = Order.new({:pizza => 1, :burger => 2, :chips => 3}, 18.5)}

  it "should initialise with dish quantities" do
    expect(order.dish_quantities).to eq({:pizza => 1, :burger => 2, :chips => 3})
  end

  it "should initialise with a total" do
    expect(order.total).to eq(18.5)
  end

end