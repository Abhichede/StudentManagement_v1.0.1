class ChangeColumnTypesStudent < ActiveRecord::Migration[5.0]
  def self.up
    change_column :students, :date_of_birth, :string
    change_column :students, :admission_date, :string
  end
  def self.down
    change_column :students, :date_of_birth, :date
    change_column :students, :admission_date, :date
  end
end
