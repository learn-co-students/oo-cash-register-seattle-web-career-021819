class CashRegister

    attr_accessor :total, :discount, :items_added, :last_trans

    def initialize (discount=0)
        self.total=0
        self.discount=discount
        self.items_added=[]
    end

    def add_item (title, price, quantity=1)
        quantity.times do 
            @items_added.push(title)
        end
        
        @last_trans=price*quantity
        self.total+=price*quantity
    end

    def apply_discount
        if self.discount>0
            self.total*=(1-self.discount/100.0)
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        self.items_added
    end

    def void_last_transaction
        @total-=@last_trans
    end



end
