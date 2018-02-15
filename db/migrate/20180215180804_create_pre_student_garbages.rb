class CreatePreStudentGarbages < ActiveRecord::Migration[5.0]
  def change
    create_table :pre_student_garbages do |t|
      t.integer :academic_year_id
      t.integer :student_id
      t.integer :fee_structure_id
      t.float :allocated_fee
      t.float :paid_fee
      t.float :balance_fee

      t.timestamps
    end
  end
end
