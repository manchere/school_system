class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :class_name
      t.string :class_type

      t.timestamps
    end
  end
end
