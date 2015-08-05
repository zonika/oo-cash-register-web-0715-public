# Write your code here.
class CashRegister
  attr_accessor :total, :discount, :items, :price
  def initialize(discount=0)
    @total=0.0
    @discount=discount.to_f
    @items=[]
  end
  def add_item(name,price,quantity=1)
    @price=price
    quantity.times do
      @total += price
      @items<<name
    end
  end
  def apply_discount
    if @discount > 0
      @total=@total-(@discount*@total)/100
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    @total=@total-@price
  end
end
