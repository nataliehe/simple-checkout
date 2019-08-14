require 'checkout'

describe Checkout do
  describe '#price' do
    it 'shows price of an item' do
      expect(subject.price('milk')).to eq(1.20)
    end
  end

  describe '#scan' do
    it 'adds an item to the scanned_items array' do
      subject.scan('milk')
      expect(subject.scanned_items).to include(:milk)
    end
  end

  describe '#total' do
    it 'shows the total price for all scanned_items in correct format' do
      items = [:milk, :bread, :eggs, :apples]
      total_price = 0
      items.each do |item|
        subject.scan(item)
        total_price += subject.price(item)
      end
      total_price = 1.2 + 1.5 + 2.4 + 1.8
      expect(subject.total).to eq('£' + '%.2f' % total_price.to_s)
    end
  end
end
