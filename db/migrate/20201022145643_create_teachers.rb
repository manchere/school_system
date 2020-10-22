class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :middle_name
      t.string :surname
      t.date :DOB
      t.date :date_of_employment
      t.string :contact
      t.string :email_address

      t.timestamps
    end
  end
end
