class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms, id: :uuid do |t|
      t.uuid :school_id, null: false
      t.string :class_name
      t.string :class_type

      t.timestamps
    end
    add_index :classrooms, :school_id, unique: true
  end
end
