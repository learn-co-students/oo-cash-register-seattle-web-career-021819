class CashRegister

  attr_reader :discount
  attr_accessor :total, :items, :last_price



  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_price = 0.0
  end

  def add_item(title_string, price_integer, quantity=1)
    quantity.times do
      @total += price_integer
      @items << title_string
      @last_price = price_integer
    end
  end

  def apply_discount
    if @discount != 0
      @total = @total * ((100.0 - @discount.to_f) / 100.0)
     "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.pop
    @total -= @last_price
  end



end
