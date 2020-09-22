class CashRegister

    attr_accessor :total, :discount, :items, :item_total, :q

    def initialize(discount = 0)

        @items = [ ]
        @total = 0.0
        @discount = discount.to_f
        
    end

    def total
        return @total
    end

    def add_item(item, price, q = 1)

        q.times { @items << item }
        @q = q
        @item_total = (price * q)
        @total = @total + @item_total

    end

    def apply_discount

        if discount == 0
            return "There is no discount to apply."
        else
            money_off = (discount * @total) / 100
            @total = @total - money_off
            return "After the discount, the total comes to $#{@total.to_i}."
        end

    end

    def items

        return @items

    end

    def void_last_transaction

        @q.times { @items.pop }
        if @items == []
            @total = 0
        else
            @total = @total - @item_total
        end

    end

end