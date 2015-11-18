class ExpenseEntry < ActiveRecord::Base
  belongs_to :user
  has_many :expense_details
end
