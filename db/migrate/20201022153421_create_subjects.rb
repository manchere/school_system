class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects, id: :uuid do |t|
      t.uuid :course_id, null: false
      t.string :subject_name
      t.string :subject_code

      t.timestamps
    end
    add_index :subjects, :course_id, unique: true
  end
end
