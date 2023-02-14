        require "pry"

        class CashRegister
        attr_reader :total, :employee_discount
        attr_accessor :total

        def initialize(employee_discount = 0)
            @employee_discount = employee_discount
            @total = 0
            @items = []
        end

        def discount
            @employee_discount
        end

        def add_item(title,price,quantity = 1)
            @total += price * quantity
            @items += [title] * quantity
        end

        def apply_discount
            if @employee_discount > 0
            @total -= (@total * @employee_discount / 100)
            "After the discount, the total comes to $#{@total}."
            else
            "There is no discount to apply."
            end
        end

        def items
        @items
        end
        
        def void_last_transaction
            return if @items.empty?
            last_item = @items.pop
            last_price = @total / @items.length
            @total -= last_price
        end

        
        
        

        
        end

        jac = CashRegister.new(10)

        binding.pry