class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools, id: :uuid do |t|
      t.string :school_name
      t.string :digital_address
    end
  end
end
