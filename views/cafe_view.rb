class CafeView
  def initialize(cafe) # cafe model instance
    @cafe = cafe
  end

  #print welcome msg from cafe instance
  def welcome
    puts "Welcome to #{@cafe.name}"
  end

  #print menu
  def print_menu
    puts "On the menu is :"
    @cafe.menu.get_items.each {|item| puts item}
    return nil
  end

  #prints user prompt to get an order, returns the input
  def place_order
    puts "What would you like to order?"
    puts "Type 'done' when you are finished."
    return gets.strip.downcase
  end

  #prints a statement if unput invalid
  def invalid_input
    puts "The item you selected is not on the menu"
    puts "Please try again or type 'done' if you are finished."
    return nil
  end

  # prints user prompt to get quanity, returns input
  def get_quantity
    puts "How many would you like?"
    return gets.to_i
  end

  def order_summary
    order_items = @cafe.get_order.items
    if order_items.length > 0
      puts "Thankyou. Here is your order:"
      order_items.each do |item_name, quantity|
        puts "#{item_name} #{quantity}"
      end
    else
      puts "Your order is empty. Thank you for coming"
    end
    puts
  end

  # prints order or msg if nothing ordered
  def print_order
    if @cafe.get_order
      order_summary
      puts "Total: $%.2f" % @cafe.order_total
    else
      puts "Thank you for comming!"
    end
  end
end