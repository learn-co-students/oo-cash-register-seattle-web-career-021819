class CashRegister
  attr_accessor :discount, :total, :quantity
  # attr_reader :total
  
  def initialize(total = 0)
    @total = total
    @discount = 20
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    @items << title
    @total += price * quantity
  end
  
  def apply_discount
    @total *= (100.0 - @discount) / 100.0
  end
  
end
