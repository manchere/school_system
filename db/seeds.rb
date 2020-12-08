# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
    User.create(
			firstname: Faker::Name.first_name,
    	surname: Faker::Name.last_name,
    	username: Faker::FunnyName.name_with_initial.to_s.gsub(/\s+/, ""),
    	password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
    	email: Faker::Internet.unique.email,
			created_at: Faker::Date.between(from: 10.years.ago, to: Date.today),
    	country: Faker::Address.country
		)
end

100.times do
    School.create(
			firstname: Faker::Name.first_name,
    	surname: Faker::Name.last_name,
    	username: Faker::FunnyName.name_with_initial.to_s.gsub(/\s+/, ""),
    	password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
    	email: Faker::Internet.unique.email,
			created_at: Faker::Date.between(from: 10.years.ago, to: Date.today),
    	country: Faker::Address.country
		)
end

100.tims do
	School.create(
		school_name: Faker::University.name
		digital_address: Faker::Address.zip_code
	)
end

100.times do
	Course.create(
		course_type: Faker::Uni
		course_name:
	)
end

100.times do
	Student.create(
		create_table "students", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "classroom_id", null: false
    t.string "firstname"
    t.string "surname"
    t.date "DOB"
    t.date "admission_date"
    t.text "address"
    t.string "nationality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email_address"
    t.string "gender"
    t.index ["classroom_id"], name: "index_students_on_classroom_id", unique: true
  end
	)
end