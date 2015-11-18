class ExpenseDetail < ActiveRecord::Base
  belongs_to :expense_entry
  belongs_to :user
end
