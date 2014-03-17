require "twilio-ruby"
MENU = {:pizza => 6, :chips => 1.5, :burger => 4} 

#account_sid = 'ACfee5d6e934b3442fa4d6a39eaa0a8b5f' 
#auth_token = 'a4a94a4ca87546cc9e60cf79b03abba1' 

class Takeaway 

  attr_reader :order

  def initialize(order)
    @order = order
  end

  def total
    result = 0
    order.dish_quantities.each do |dish, quantity|
      result = result + (quantity * MENU[dish])
    end
    result
  end

  def check_total
    return true if total == order.total
    false
  end

  def message
    time = Time.now + (60*60)
    "Thank you! Your order was placed successfully and that it will be delivered before #{time.strftime("%H%M")}"
  end

  def check_send_message
    check_total ? send_message(message) : (raise "Totals do not match")
  end

  def client
    @client = Twilio::REST::Client.new('ACfee5d6e934b3442fa4d6a39eaa0a8b5f', 'a4a94a4ca87546cc9e60cf79b03abba1')
  end

  def send_message(message)
    client.account.messages.create({:from => "+443333442639", :to => "+447789172199", :body => message)
  end
end