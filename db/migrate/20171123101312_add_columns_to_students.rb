class AddColumnsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :no_of_installments, :integer
    add_column :students, :total_paid, :string
    add_column :students, :balance_amount, :string
    add_column :students, :allocated_fee, :string
  end
end
