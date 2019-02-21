require 'pry'

class CashRegister
  attr_reader :discount, :quantity, :items
  attr_accessor :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      items << item
    end

    @last_transaction = price
    @total += price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end

    @total *= ((100-discount)/100.0)
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
