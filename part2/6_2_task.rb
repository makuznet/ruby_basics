#!/usr/bin/ruby
# frozen_string_literal: true

list = {} # the main hash
grand_total = 0
loop do
  price_n_qty = {} # temp hash empted each cycle for nesting in the 'list' hash
  puts 'Start entering items, their prices and q-ties to know how much you\'ve spent.'
  puts 'Type stop on item prompt to get results'
  print 'item: '
  user_item = gets.chomp
  break if user_item == 'stop'

  print 'price: '
  user_price = gets.chomp.to_f.round(2) # converting input to float and reducing decimal part
  print 'q-ty: '
  user_qty = gets.chomp.to_f.round(2)
  price_n_qty[:price] = user_price # populating the temp hash
  price_n_qty[:qty] = user_qty
  list[:"#{user_item}"] = price_n_qty # nesting the temp hash as a value to the main hash
end
puts list # printing out the main hash
list.each do |item, nested_hash|
  cost = nested_hash[:price] * nested_hash[:qty] # calculating cost per item in the loop
  puts "#{item} cost, EUR: #{cost}" # visualizing items costs kindly
  grand_total += cost # incrementing grand total in the loop
end
print "Grand total, EUR: #{grand_total} \n" # displaying the final ammount spent
