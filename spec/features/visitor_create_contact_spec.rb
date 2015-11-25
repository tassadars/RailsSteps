require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Contact creation" do 
  scenario "allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content  I18n.t('contacts.contact_us')
  end
end