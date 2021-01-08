class LoginForm
  include Capybara::DSL

   def visit_login_page
    visit('/login')

    self
  end
  
  def fill_in_with(params={})
    fill_in 'Email or username',	with: params.fetch(:email, 'kidcudi84@gmail.com')
    fill_in 'Password', with: '1234'
    
    self
  end

  def login
    click_on('Sign in')

    self
  end
  
end