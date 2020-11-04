require 'rails_helper'

  feature 'School page' do
    scenario 'Welcome page' do
      visit('/')
      expect(page).to have_content('School')
    end
  end

  

  
