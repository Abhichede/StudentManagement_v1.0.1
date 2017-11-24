class CreateFeeStructures < ActiveRecord::Migration[5.0]
  def change
    create_table :fee_structures do |t|
      t.string :class, null: false
      t.string :section, null: false
      t.string :allocated_fee, null: false

      t.timestamps
    end
  end
end
