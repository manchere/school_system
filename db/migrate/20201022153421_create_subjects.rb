class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects, id: :uuid do |t|
      t.uuid :classroom_id, null: false
      t.string :subject_name
      t.string :subject_code

      t.timestamps
    end
    add_index :subjects, :classroom_id, unique: true
  end
end
