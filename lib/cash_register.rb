
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_price = 00
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @total += price
      @items.push << title
      @last_price = price
    end
  end

  def apply_discount
    if @discount.to_f == 0
      return "There is no discount to apply."
    else
      @total = total * (1 - (@discount.to_f/100))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    #remove the price of the most recent items
    @total -= @last_price
  end

end
