require 'rails_helper'

feature 'login' do
  scenario 'login with valid data' do 
    visit('/login')
    fill_in 'Email or username',	with: 'kidcudi84@gmail.com'
    fill_in 'Password', with: '1234'
    click_on('Sign in')

    expect(page).to have_content('Kid Cudi')
    expect(User.find_by(email: 'kidcudi84@gmail.com').email).to eq('kidcudi84@gmail.com')  
  end
end
