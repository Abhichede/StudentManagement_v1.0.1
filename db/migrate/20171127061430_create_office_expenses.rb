class CreateOfficeExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :office_expenses do |t|
      t.string :expense_type
      t.string :description
      t.string :amount
      t.string :payment_method
      t.string :payment_descrition
      t.string :paid_by
      t.string :received_by

      t.timestamps
    end
  end
end
