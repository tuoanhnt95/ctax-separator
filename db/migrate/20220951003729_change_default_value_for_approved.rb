class ChangeDefaultValueForApproved < ActiveRecord::Migration[7.0]
  def change
    change_column_default :expenses, :approved, false
  end
end
