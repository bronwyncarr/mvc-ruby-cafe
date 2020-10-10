require_relative '../views/cafe_view'

describe CafeView do
  it 'should print a welcome message' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    cafe_view = CafeView.new(cafe)
    expect(cafe_view.welcome).to be(nil)
  end

  it 'should print the menu' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    cafe_view = CafeView.new(cafe)
    expect(cafe_view.print_menu).to be(nil)
  end

  # it 'should prompt the user to place an order' do
    # can't be tested as waiting for user input
  # end

  it 'should print a message that item is invalid' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    cafe_view = CafeView.new(cafe)
    expect(cafe_view.invalid_input).to be(nil)
  end

  it 'should print the order summary for an empty order' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    cafe_view = CafeView.new(cafe)
    expect(cafe_view.print_order).to be(nil)
  end

  it 'should print the order summary with an order item' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    cafe_view = CafeView.new(cafe)
    item = "latte"
    quantity = 1
    cafe.add_to_order(item, quantity)
    cafe_view = CafeView.new(cafe)    
    expect(cafe_view.print_order).to be(nil)
  end
end