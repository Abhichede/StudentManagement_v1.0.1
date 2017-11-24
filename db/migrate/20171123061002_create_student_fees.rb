class CreateStudentFees < ActiveRecord::Migration[5.0]
  def change
    create_table :student_fees do |t|
      t.integer :student_id, null: false
      t.string :payment_date
      t.string :installment_no
      t.string :amount
      t.string :payment_method
      t.string :payment_desc
      t.string :paid_by
      t.string :received_by

      t.timestamps
    end
  end
end
