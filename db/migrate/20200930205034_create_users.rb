# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0] # rubocop:todo Style/Documentation
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
