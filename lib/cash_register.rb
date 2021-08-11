require "pry"
class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        last_transaction = 0
    end

    def add_item (title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += last_transaction
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if self.discount != 0
            self.total -= self.total * (0.01 * self.discount)
            "After the discount, the total comes to $#{self.total.to_int}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end
    