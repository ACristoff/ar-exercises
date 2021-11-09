require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Global annual revenue is: #{Store.sum(:annual_revenue)}"
puts "Average annual revenue is: #{(Store.sum(:annual_revenue)/Store.all.count)}"
puts "The number of stores generating over $1M in annual revenue is: #{Store.where("annual_revenue>1000000").count}"

# ### Exercise 5: Calculations

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

# @person = Person.where(name: 'Jason').where(age: 26)


# @womens_stores_over_1m = Store.where("womens_apparel=true and annual_revenue>1000000")