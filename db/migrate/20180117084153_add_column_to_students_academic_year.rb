class AddColumnToStudentsAcademicYear < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :academic_year_id, :integer
  end
end
