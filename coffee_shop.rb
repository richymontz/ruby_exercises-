class CoffeeShop
	attr_accessor :name, :menu, :orders

  def initialize(name, menu, orders = [])
    @name = name
    @menu = menu
    @orders = []
  end

  def add_order(item_name)    
    return "Sorry, this item is unavailable." if get_item(item_name).nil?

    @orders << item_name
    
    "Order added!"
  end

  def fulfill_order
    @orders.empty? ? "No orders to fulfill!" : "The #{ @orders.shift } is ready!"
  end

  def cheapest_item
    menu.sort_by{|k, v| k[:price] }.first[:item]
  end

  def drinks_only
    @menu.select{|item|  item[:type].eql? 'drink' }.map{ |item| item[:item] }
  end

  private

  def get_item(item_name)
    @menu.select{ |item| item[:item].eql? item_name }.first
  end
end