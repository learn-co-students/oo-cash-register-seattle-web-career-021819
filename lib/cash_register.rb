class CashRegister
  attr_accessor :discount, :total, :quantity, :items
  # attr_reader :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    quantity.times do 
      @items << title
    end
    @total += price * quantity
  end
  
  def apply_discount
    if @discount > 0
      @total = @total * ((100.0 - @discount) / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total = 0
  end
  
end
