# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[6.0] # rubocop:todo Style/Documentation
  def change
    create_table :questions do |t|
      t.string :email, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
