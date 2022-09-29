class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :type, :expense_type
  end
end
