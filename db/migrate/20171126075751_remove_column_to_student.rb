class RemoveColumnToStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :balance_amount
  end
end
