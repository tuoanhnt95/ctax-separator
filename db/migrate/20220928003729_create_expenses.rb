class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :total_amount_yen
      t.integer :after_tax_10
      t.integer :after_tax_0
      t.boolean :approved
      t.string :type

      t.timestamps
    end
  end
end
