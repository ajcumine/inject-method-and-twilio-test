class Takeaway 
  
  MENU = {:pizza => 6, :chips => 1.5, :burger => 4}  

  attr_reader :order

  def initialize(order)
    @order = order
  end
end