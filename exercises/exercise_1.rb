require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: 1, womens_apparel: 1)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: 0, womens_apparel: 1)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: 1, womens_apparel: 0)

puts Store.all.count

# Exercise 1: Create 3 stores

#     Use Active Record's create class method multiple times to create 3 stores in the database:

#     Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#     Richmond (annual_revenue of 1260000 carries women's apparel only)
#     Gastown (annual_revenue of 190000 carries men's apparel only)

#     Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.

# ActiveRecord::Schema.define do
#   drop_table :stores if ActiveRecord::Base.connection.table_exists?(:stores)
#   drop_table :employees if ActiveRecord::Base.connection.table_exists?(:employees)
#   create_table :stores do |t|
#     t.column :name, :string
#     t.column :annual_revenue, :integer
#     t.column :mens_apparel, :boolean
#     t.column :womens_apparel, :boolean
#     t.timestamps null: false
#   end
#   create_table :employees do |table|
#     table.references :store
#     table.column :first_name, :string
#     table.column :last_name, :string
#     table.column :hourly_rate, :integer
#     table.timestamps null: false
#   end
# end



# 5.1 Create

# Active Record objects can be created from a hash, a block, or have their attributes manually set after creation. The new method will return a new object while create will return the object and save it to the database.

# For example, given a model User with attributes of name and occupation, the create method call will create and save a new record into the database:

# user = User.create(name: "David", occupation: "Code Artist")

# Using the new method, an object can be instantiated without being saved:

# user = User.new
# user.name = "David"
# user.occupation = "Code Artist"

# A call to user.save will commit the record to the database.