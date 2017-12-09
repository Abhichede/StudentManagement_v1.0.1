class AddColumnToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :alternate_mobile, :string, default: ''
  end
end
