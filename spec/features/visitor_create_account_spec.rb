require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Account creation" do 

  scenario "allows a guest to create account" do

    sign_up 
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

