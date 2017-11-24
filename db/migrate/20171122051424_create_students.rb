class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.string :father_occupation
      t.string :mother_name
      t.text :address
      t.string :mobile_no
      t.date :date_of_birth
      t.string :college_name
      t.string :student_class
      t.date :admission_date
      t.string :division

      t.timestamps
    end
  end
end
