require 'pry'

class CashRegister

  attr_accessor :item, :discount, :total
  attr_reader :title, :price

  def initialize(discount= 0)
    @total = 0.0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity= 1)
    @total = @total + price*quantity
    quantity.times {@cart.push title}
    @last_price = price
  end

  def apply_discount
    if discount > 0.00
      @total = @total - (@total*discount)/100.0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @cart.pop
    @total = @total - @last_price
  end
end
