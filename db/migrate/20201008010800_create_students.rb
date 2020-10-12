class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :surname
      t.date :DOB
      t.date :admission_date
      t.text :address
      t.string :nationality

      t.timestamps
    end
  end
end
