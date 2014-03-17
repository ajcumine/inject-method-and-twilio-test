class Order

  attr_reader :dish_quantities, :total

  def initialize(dish_quantities, total)
    @dish_quantities = dish_quantities
    @total = total
  end

end