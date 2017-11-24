class RenameColumnFromFeeStructure < ActiveRecord::Migration[5.0]
  def change
    rename_column :fee_structures, :class, :student_class
  end
end
