class ChangeDefaultValueForTaxRate < ActiveRecord::Migration[7.0]
  def change
    change_column_default :expenses, :ctax10, true
    change_column_default :expenses, :ctax8, false
    change_column_default :expenses, :ctax0, false
  end
end
