class Expense < ApplicationRecord
  def self.after_tax_8(expense)
    expense.total_amount_yen - expense.after_tax_10 - expense.after_tax_0
  end
  
end
