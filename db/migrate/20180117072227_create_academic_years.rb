class CreateAcademicYears < ActiveRecord::Migration[5.0]
  def change
    create_table :academic_years do |t|
      t.string :start_month
      t.string :start_year
      t.string :end_month
      t.string :end_year

      t.timestamps
    end

    add_column :student_fees, :academic_year_id, :integer
  end
end
