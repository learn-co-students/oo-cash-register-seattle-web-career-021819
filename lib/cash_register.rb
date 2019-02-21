class CashRegister

  attr_accessor :discount, :price, :quantity, :items, :last_price, :total


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_price
  end



  def add_item(title, price, quantity=1)
    if quantity == 1
      @total  += price
      @items << title
    else
      @total += (price * quantity)
      quantity.times do
        @items << title
      end
    end
    @last_price = (price * quantity)
    @total
  end

  def apply_discount
    if @discount != 0  #if there is a discount
      percentage = (@discount.to_f/100) #gets discount into decimal format
      dollar_deduction = (@total * percentage)#discount in dollars
      @total = @total - dollar_deduction.to_i #apply the discount to total
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_price#deduct from total
    @items.pop#remove item from array
  end

  # def items(title)
  #   @items << title
  # end

end
