require_relative '../models/menu_item'
require_relative '../models/menu'
require_relative '../models/order'
require_relative '../models/cafe'

describe MenuItem do
  it 'should crete a new item with name and price' do
    name = 'latte'
    price = 4.00
    item = MenuItem.new(name, price)
    expect(item.name).to eq(name)
    expect(item.price).to eq(price)
  end
end

describe Menu do 
  it 'should be able to add an item' do
    menu = Menu.new
    name = 'latte'
    price = 4.00
    menu.add_item(name, price)
    expect(menu.get_items.length).to be(1)
  end

    it 'item should have an expected price' do
    menu = Menu.new
    name = 'latte'
    price = 4.00
    menu.add_item(name, price)
    expect(menu.get_price(name)).to eq(price)
  end
end

describe Order do
  it 'should add an item to the order' do
      order = Order.new
      name = "latte"
      quantity = 2
      order.add(name, quantity)
      expect(order.items().length).to be(1)
    end
end

describe Cafe do
  it 'should create a cafe name' do
    name = "My Cafe"
    menu_items = {}
    cafe = Cafe.new(name, menu_items)
    expect(cafe.name).to eq(name)
  end

  it 'should create a cafe with a menu' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    expect(cafe.menu.get_items.length).to be(2)
  end

  it 'should add an item to order' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    item = "latte"
    quantity = 1
    cafe.add_to_order(item, quantity)
    expect(cafe.get_order().items().length).to be (1)
  end

  it 'should validate a valid menu item' do
    name = "My Cafe"
    menu_items = {"latte" => 4.00, "tea" => 2.00}
    cafe = Cafe.new(name, menu_items)
    expect(cafe.validate_item("latte")).to eq("latte")
  end
end