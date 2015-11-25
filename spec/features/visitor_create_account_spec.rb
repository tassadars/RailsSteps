require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Account creation" do 

  scenario "allows a guest to create account" do
    visit new_user_registration_path 

    fill_in :user_email, :with => 'user@example.com' 
    fill_in :user_username, :with => 'mike' 
    fill_in :user_password, :with => 'secure123!@' 
    fill_in :user_password_confirmation, :with => 'secure123!@'

    click_button 'Sign up'   
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end