require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: 0, womens_apparel: 1)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: 1, womens_apparel: 0)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: 1, womens_apparel: 1)

@mens_stores = Store.where(mens_apparel: 1)

for store in @mens_stores
  puts "#{store.name} has an annual revenue of #{store.annual_revenue}"
end

@womens_stores_over_1m = Store.where("womens_apparel=true and annual_revenue>1000000")

for store in @womens_stores_over_1m
  puts "#{store.name} has an annual revenue of #{store.annual_revenue}"
end

# Exercise 4: Loading a subset of stores

#     Borrowing and modifying the code from Exercise one, create 3 more stores:

#     Surrey (annual_revenue of 224000, carries women's apparel only)
#     Whistler (annual_revenue of 1900000 carries men's apparel only)
#     Yaletown (annual_revenue of 430000 carries men's and women's apparel)

#     Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
#     Loop through each of these stores and output their name and annual revenue on each line.
#     Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.




# In ActiveRecord, it’s possible to utilize a raw string to access sql’s interface directly, like so:

# User.where('users.created_at > ?', 1.week.ago)

# Or even the keyword interpolation style:

# User.where('users.created_at > :after_date', after_date: 1.week.ago)

# Book.where("LENGTH(title) > 20")

# the_count = [1, 2, 3, 4, 5]
# fruits = ['apples', 'oranges', 'pears', 'apricots']
# change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# for number in the_count
#   puts "This is count #{number}"
# end

# fruits.each do |fruit|
#   puts "A fruit of type: #{fruit}"
# end

# change.each {|i|  puts "I got #{i}"}

# elements = []

# (0..5).each do |i|
#   puts "adding #{i} to the list."
#   elements.push(i)
# end

# elements.each {|i| puts "Element was: #{i}"}