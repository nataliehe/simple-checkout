ITEMS = {
  milk: 1.2,
  bread: 1.5,
  eggs: 2.4,
  apples: 1.8,
  banana: 1,
  chicken: 4,
  sausages: 2.6
}

class Checkout
  attr_reader :scanned_items

  def initialize
    @scanned_items = []
  end

  def price(item)
    ITEMS[item.to_sym]
  end

  def scan(item)
    @scanned_items << item.to_sym
  end

  def total
    total = 0
    @scanned_items.each { |item| total += price(item) }
    format(total)
  end

private
  def format(number)
    '£' + '%.2f' % number
  end
end
