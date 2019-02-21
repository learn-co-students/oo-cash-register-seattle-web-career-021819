class CashRegister
  attr_accessor :total, :discount, :item
  
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
    @items = []
    @last_price = 0.0
  end
  
  def add_item(item, price, quantity=1)
    quantity.times do 
      @total += price
      @items << item
      @last_price = price
    end
  end
  
  def apply_discount
    if discount
      @total = @total - (@total.to_f * (@discount.to_f / 100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @items.pop
    @total = @total - @last_price
  end
  
end
