class AddTaxRateColumnToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :ctax10, :boolean
    add_column :expenses, :ctax8, :boolean
    add_column :expenses, :ctax0, :boolean
  end
end
