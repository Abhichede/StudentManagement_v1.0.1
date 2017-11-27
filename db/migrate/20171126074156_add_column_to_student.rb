class AddColumnToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :discount, :string, default: '0'
  end
end
