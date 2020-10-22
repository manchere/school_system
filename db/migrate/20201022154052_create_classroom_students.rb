class CreateClassroomStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :classroom_students do |t|
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
