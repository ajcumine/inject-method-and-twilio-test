class Takeaway 
  
  MENU = {:pizza => 6, :chips => 1.5, :burger => 4}  

  attr_reader :order

  def initialize(order)
    @order = order
  end

  def total
    result = 0
    @order.dish_quantities.each do |dish, quantity|
      result = result + (quantity * MENU[dish])
    end
    result
  end

  def check_total
    return true if total == order.total
  end

  def message
    time = Time.now + (60*60)
    "Thank you! Your order was placed successfully and that it will be delivered before #{time.strftime("%H%M")}"
  end

end