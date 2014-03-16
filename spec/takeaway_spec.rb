require "takeaway.rb"

describe Takeaway do

  let(:order) {double :order,{:dish_quantities => {:pizza => 1, :burger => 2, :chips => 3}, :total => 18.5}}
  let(:takeaway) {takeaway = Takeaway.new(order)}
  let(:time) {Time.now + (60*60)}
  
  it "should initialize with an order" do
    expect(takeaway.order).to eq(order)
  end

  it "should know what has been ordered" do
    expect(takeaway.order.dish_quantities.keys).to eq([:pizza, :burger, :chips])
  end

  it "should know the total of what has been ordered" do
    expect(takeaway.order.total).to eq(18.5)
  end

  it "should calculate total" do
    expect(takeaway.total).to eq(18.5)
  end

  it "should check the totals match" do
    expect(takeaway.check_total).to be_true
  end

  it "should create a message if the totals match" do
    expect(takeaway.message).to eq("Thank you! Your order was placed successfully and that it will be delivered before #{time.strftime("%H%M")}")
  end

  # it "should return an error if the totals do not match" do
  #   expect(takeaway.check_total).to raise_error(RuntimeError)
  # end
end
