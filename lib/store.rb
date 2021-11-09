class Store < ActiveRecord::Base
  has_many :employees

  validate :minimum_name, :annual_revenue_is_int
  #bonus round!

  def minimum_name
    if name.nil?
      errors.add(:name, "You must put a name")
    elsif self.name.length < 3
      errors.add(:name, "Name must be at least 3 characters")
    end
  end

  def annual_revenue_is_int
    if annual_revenue.nil?
      errors.add(:annual_revenue, "annual_revenue must be an integer")
    elsif annual_revenue <= 0
      errors.add(:annual_revenue, "annual_revenue must be an integer greater than 0")
    end 
  end

end

# if @answer.is_a? Integer


# class Invoice < ApplicationRecord
#   validate :expiration_date_cannot_be_in_the_past,
#     :discount_cannot_be_greater_than_total_value

#   def expiration_date_cannot_be_in_the_past
#     if expiration_date.present? && expiration_date < Date.today
#       errors.add(:expiration_date, "can't be in the past")
#     end
#   end

#   def discount_cannot_be_greater_than_total_value
#     if discount > total_value
#       errors.add(:discount, "can't be greater than total value")
#     end
#   end
# end


# 1. Add validations to two models to enforce the following business rules:
#   * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between 40 and 200
#   * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more
#   * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)
# 2. Ask the user for a store name (store it in a variable)
# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record