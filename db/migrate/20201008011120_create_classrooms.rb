class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :level
      t.string :type
      t.string :letter

      t.timestamps
    end
  end
end
