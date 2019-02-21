

class CashRegister
  attr_accessor :total, :discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_price
  end

  def add_item(title, price, quanitity=1)
      quanitity.times do
      @total += price
      @items << title
      @last_price = price
    end
  end

  def apply_discount
    if discount != 0
      @total = @total - (@total.to_f * (@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
  end
end

def items
@items
end

def void_last_transaction
@total = @total - @last_price

end




end
