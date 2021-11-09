class Employee < ActiveRecord::Base
  belongs_to :store

  # validates :first_name, presence: true
  validate :has_first_name, :has_last_name, :has_fair_wage_but_not_too_fair, :is_not_pepe_silvia

  def has_first_name
    if first_name.nil?
      errors.add(:name, "Must have a first name!")
    end
  end

  def has_last_name
    if last_name.nil?
      errors.add(:name, "Must have a last name!")
    end
  end

  def has_fair_wage_but_not_too_fair
    if hourly_rate < 40
      errors.add(:hourly_rate, "Must be paid at least 40!")
    elsif hourly_rate > 200
      errors.add(:hourly_rate, "Woah now lets not get too hasty!")
    end
  end

  def is_not_pepe_silvia
    if store.nil?
      errors.add(:store, "Must be employed at this company")
    end
  end

end

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