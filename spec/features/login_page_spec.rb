require 'rails_helper'
require_relative '../support/login_form'

feature 'login' do
  let(:loginform) { LoginForm.new } 
  scenario 'login with valid data' do 
    loginform.visit_login_page.fill_in_with( 
      email: 'kidcudi84@gmail.com' 
    ).login

    expect(page).to have_content('Kid Cudi')
    expect(User.find_by(email: 'kidcudi84@gmail.com').email).to eq('kidcudi84@gmail.com')  
  end
end
