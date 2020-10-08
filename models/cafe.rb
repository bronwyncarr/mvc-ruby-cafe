require_relative './menu'

class Cafe
  attr_reader :name, :menu
  def initialize (name, menu_items)
    @name = name
    @menu = Menu.new
    @order = Order.new
    populate_menu(menu_items)
  end

  def populate_menu(menu_items)
    menu_items.each do |name, price|
      @menu.add_item(name, price)
    end
  end

  def add_to_order(item, quantity)
    @order.add(item, quantity)
  end

  def get_order
    return @order
  end

  def validate_item(item_name)
    @menu.validate_item(item_name)
  end
end