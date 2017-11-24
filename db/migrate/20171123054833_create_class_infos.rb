class CreateClassInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :class_infos do |t|
      t.string :class_name
      t.string :address
      t.string :contact_no
      t.string :available_classes
      t.string :subjects

      t.timestamps
    end
  end
end
