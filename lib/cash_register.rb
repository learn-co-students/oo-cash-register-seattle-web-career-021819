require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@all = []
  end

  def add_item(title, price, quantity=0)
    if quantity > 0
      @total += price * quantity
      quantity.times do
        @@all << title
      end
    else
      @total += price
      @@all << title
    end
    @last_transaction = price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total.to_f - (@discount.to_f * 10)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
