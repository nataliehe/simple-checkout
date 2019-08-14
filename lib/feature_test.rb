require './lib/checkout'

# ITEMS = {
#   milk: 1.2,
#   bread: 1.5,
#   eggs: 2.4,
#   apples: 1.8,
#   banana: 1,
#   chicken: 4,
#   sausages: 2.6
# }

checkout = Checkout.new # creates a new checkout
checkout.price(item) # shows price of the item
checkout.scan(item) # adds an item to the scanned_items array
checkout.total # shows the total price for all scanned_items

checkout.price(item)
checkout.total
#  All prices are correctly formatted (£xx.xx)

# EDGE CASES
# 1) What will checkout.price do if an item is not in the list
