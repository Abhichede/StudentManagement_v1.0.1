class JoinTablesStudentAndAcademicYear < ActiveRecord::Migration[5.0]
  def change
    create_join_table :students, :academic_years do |t|
      t.index [:student_id, :academic_year_id]
      t.index [:academic_year_id, :student_id]
    end
  end
end
