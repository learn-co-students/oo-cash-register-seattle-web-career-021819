require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    quantity.times {@cart << item}
  end


  def apply_discount
    if @discount != 0
      precent = (100 - @discount).to_f
      self.total = (@total * (precent/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
#float, instance value subtract from total
    @total -= self.total
  end

end
