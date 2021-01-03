require 'rails_helper'

feature 'create new user' do
  scenario 'create new user with valid data' do
    visit('/')
    click_on('Create an account')

    fill_in('Username', with: 'youcantseeme')
    fill_in('Email', with: 'johncena@gmail.com')
    fill_in('Password', with: '1234')
    click_on('Create account')

    expect(page).to have_content('Welcome, youcantseeme')
    expect(User.last.email).to eq('johncena@gmail.com')   
  end
end